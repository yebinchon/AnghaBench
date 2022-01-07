
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct dentry* s_root; } ;
struct pts_mount_opts {int mode; int gid; scalar_t__ setgid; int uid; scalar_t__ setuid; } ;
struct pts_fs_info {struct pts_mount_opts mount_opts; struct super_block* sb; } ;
struct inode {int i_ino; int i_ctime; int i_atime; int i_mtime; int i_gid; int i_uid; } ;
struct dentry {void* d_fsdata; } ;


 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 int MKDEV (int ,int) ;
 int S_IFCHR ;
 int UNIX98_PTY_SLAVE_MAJOR ;
 int current_fsgid () ;
 int current_fsuid () ;
 int current_time (struct inode*) ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc_name (struct dentry*,char*) ;
 int d_inode (struct dentry*) ;
 int fsnotify_create (int ,struct dentry*) ;
 int init_special_inode (struct inode*,int,int ) ;
 int iput (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;
 int sprintf (char*,char*,int) ;

struct dentry *devpts_pty_new(struct pts_fs_info *fsi, int index, void *priv)
{
 struct dentry *dentry;
 struct super_block *sb = fsi->sb;
 struct inode *inode;
 struct dentry *root;
 struct pts_mount_opts *opts;
 char s[12];

 root = sb->s_root;
 opts = &fsi->mount_opts;

 inode = new_inode(sb);
 if (!inode)
  return ERR_PTR(-ENOMEM);

 inode->i_ino = index + 3;
 inode->i_uid = opts->setuid ? opts->uid : current_fsuid();
 inode->i_gid = opts->setgid ? opts->gid : current_fsgid();
 inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
 init_special_inode(inode, S_IFCHR|opts->mode, MKDEV(UNIX98_PTY_SLAVE_MAJOR, index));

 sprintf(s, "%d", index);

 dentry = d_alloc_name(root, s);
 if (dentry) {
  dentry->d_fsdata = priv;
  d_add(dentry, inode);
  fsnotify_create(d_inode(root), dentry);
 } else {
  iput(inode);
  dentry = ERR_PTR(-ENOMEM);
 }

 return dentry;
}
