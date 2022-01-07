
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_mtime; int i_sb; } ;
struct dentry {struct dentry* d_parent; } ;
struct autofs_sb_info {int flags; int lookup_lock; } ;
struct autofs_info {int dentry; int count; } ;
struct TYPE_3__ {scalar_t__ i_size; } ;


 int AUTOFS_SBI_CATATONIC ;
 int EACCES ;
 int IS_ROOT (struct dentry*) ;
 int __autofs_add_expiring (struct dentry*) ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 int autofs_oz_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 int clear_nlink (TYPE_1__*) ;
 int current_time (struct inode*) ;
 int d_drop (struct dentry*) ;
 TYPE_1__* d_inode (struct dentry*) ;
 int dput (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int autofs_dir_unlink(struct inode *dir, struct dentry *dentry)
{
 struct autofs_sb_info *sbi = autofs_sbi(dir->i_sb);
 struct autofs_info *ino = autofs_dentry_ino(dentry);
 struct autofs_info *p_ino;

 if (!autofs_oz_mode(sbi))
  return -EACCES;





 if (sbi->flags & AUTOFS_SBI_CATATONIC)
  return -EACCES;

 if (atomic_dec_and_test(&ino->count)) {
  p_ino = autofs_dentry_ino(dentry->d_parent);
  if (p_ino && !IS_ROOT(dentry))
   atomic_dec(&p_ino->count);
 }
 dput(ino->dentry);

 d_inode(dentry)->i_size = 0;
 clear_nlink(d_inode(dentry));

 dir->i_mtime = current_time(dir);

 spin_lock(&sbi->lookup_lock);
 __autofs_add_expiring(dentry);
 d_drop(dentry);
 spin_unlock(&sbi->lookup_lock);

 return 0;
}
