
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_sb; } ;
struct autofs_sb_info {int lookup_lock; } ;
struct autofs_info {int expiring; } ;


 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void autofs_del_expiring(struct dentry *dentry)
{
 struct autofs_sb_info *sbi = autofs_sbi(dentry->d_sb);
 struct autofs_info *ino = autofs_dentry_ino(dentry);

 if (ino) {
  spin_lock(&sbi->lookup_lock);
  if (!list_empty(&ino->expiring))
   list_del_init(&ino->expiring);
  spin_unlock(&sbi->lookup_lock);
 }
}
