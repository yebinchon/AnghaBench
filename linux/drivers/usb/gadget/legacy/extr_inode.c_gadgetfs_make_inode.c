
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_mode; struct file_operations const* i_fop; void* i_private; int i_ctime; int i_mtime; int i_atime; int i_gid; int i_uid; int i_ino; } ;
struct file_operations {int dummy; } ;


 int current_time (struct inode*) ;
 int default_gid ;
 int default_uid ;
 int get_next_ino () ;
 int init_user_ns ;
 int make_kgid (int *,int ) ;
 int make_kuid (int *,int ) ;
 struct inode* new_inode (struct super_block*) ;

__attribute__((used)) static struct inode *
gadgetfs_make_inode (struct super_block *sb,
  void *data, const struct file_operations *fops,
  int mode)
{
 struct inode *inode = new_inode (sb);

 if (inode) {
  inode->i_ino = get_next_ino();
  inode->i_mode = mode;
  inode->i_uid = make_kuid(&init_user_ns, default_uid);
  inode->i_gid = make_kgid(&init_user_ns, default_gid);
  inode->i_atime = inode->i_mtime = inode->i_ctime
    = current_time(inode);
  inode->i_private = data;
  inode->i_fop = fops;
 }
 return inode;
}
