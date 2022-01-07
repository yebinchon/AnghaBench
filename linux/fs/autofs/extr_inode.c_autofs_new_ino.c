
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_sb_info {int dummy; } ;
struct autofs_info {struct autofs_sb_info* sbi; int last_used; int expiring; int active; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int jiffies ;
 struct autofs_info* kzalloc (int,int ) ;

struct autofs_info *autofs_new_ino(struct autofs_sb_info *sbi)
{
 struct autofs_info *ino;

 ino = kzalloc(sizeof(*ino), GFP_KERNEL);
 if (ino) {
  INIT_LIST_HEAD(&ino->active);
  INIT_LIST_HEAD(&ino->expiring);
  ino->last_used = jiffies;
  ino->sbi = sbi;
 }
 return ino;
}
