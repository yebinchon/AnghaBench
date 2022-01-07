
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_sb; } ;
struct autofs_sb_info {int expiring_list; } ;
struct autofs_info {int expiring; } ;


 struct autofs_info* autofs_dentry_ino (struct dentry*) ;
 struct autofs_sb_info* autofs_sbi (int ) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static inline void __autofs_add_expiring(struct dentry *dentry)
{
 struct autofs_sb_info *sbi = autofs_sbi(dentry->d_sb);
 struct autofs_info *ino = autofs_dentry_ino(dentry);

 if (ino) {
  if (list_empty(&ino->expiring))
   list_add(&ino->expiring, &sbi->expiring_list);
 }
}
