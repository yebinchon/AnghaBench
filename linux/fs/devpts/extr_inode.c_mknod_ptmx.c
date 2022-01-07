
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct dentry* s_root; } ;
struct pts_mount_opts {int ptmxmode; } ;
struct pts_fs_info {struct dentry* ptmx_dentry; struct pts_mount_opts mount_opts; } ;
struct inode {int i_ino; int i_gid; int i_uid; int i_ctime; int i_atime; int i_mtime; } ;
struct dentry {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 struct pts_fs_info* DEVPTS_SB (struct super_block*) ;
 int ENOMEM ;
 int MKDEV (int ,int) ;
 int S_IFCHR ;
 int TTYAUX_MAJOR ;
 int current_fsgid () ;
 int current_fsuid () ;
 int current_time (struct inode*) ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (struct dentry*,char*) ;
 int d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int init_special_inode (struct inode*,int,int ) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 struct inode* new_inode (struct super_block*) ;
 int pr_err (char*) ;

__attribute__((used)) static int mknod_ptmx(struct super_block *sb)
{
 int mode;
 int rc = -ENOMEM;
 struct dentry *dentry;
 struct inode *inode;
 struct dentry *root = sb->s_root;
 struct pts_fs_info *fsi = DEVPTS_SB(sb);
 struct pts_mount_opts *opts = &fsi->mount_opts;
 kuid_t ptmx_uid = current_fsuid();
 kgid_t ptmx_gid = current_fsgid();

 inode_lock(d_inode(root));


 if (fsi->ptmx_dentry) {
  rc = 0;
  goto out;
 }

 dentry = d_alloc_name(root, "ptmx");
 if (!dentry) {
  pr_err("Unable to alloc dentry for ptmx node\n");
  goto out;
 }




 inode = new_inode(sb);
 if (!inode) {
  pr_err("Unable to alloc inode for ptmx node\n");
  dput(dentry);
  goto out;
 }

 inode->i_ino = 2;
 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);

 mode = S_IFCHR|opts->ptmxmode;
 init_special_inode(inode, mode, MKDEV(TTYAUX_MAJOR, 2));
 inode->i_uid = ptmx_uid;
 inode->i_gid = ptmx_gid;

 d_add(dentry, inode);

 fsi->ptmx_dentry = dentry;
 rc = 0;
out:
 inode_unlock(d_inode(root));
 return rc;
}
