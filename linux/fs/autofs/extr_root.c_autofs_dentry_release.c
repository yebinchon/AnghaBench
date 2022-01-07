
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_sb; } ;
struct autofs_sb_info {int lookup_lock; } ;
struct autofs_info {int expiring; int active; } ;


 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 int autofs_free_ino (struct autofs_info*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int pr_debug (char*,struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void autofs_dentry_release(struct dentry *de)
{
 struct autofs_info *ino = autofs_dentry_ino(de);
 struct autofs_sb_info *sbi = autofs_sbi(de->d_sb);

 pr_debug("releasing %p\n", de);

 if (!ino)
  return;

 if (sbi) {
  spin_lock(&sbi->lookup_lock);
  if (!list_empty(&ino->active))
   list_del(&ino->active);
  if (!list_empty(&ino->expiring))
   list_del(&ino->expiring);
  spin_unlock(&sbi->lookup_lock);
 }

 autofs_free_ino(ino);
}
