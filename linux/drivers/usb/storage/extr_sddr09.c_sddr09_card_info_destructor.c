
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sddr09_card_info {int pba_to_lba; int lba_to_pba; } ;


 int kfree (int ) ;

__attribute__((used)) static void
sddr09_card_info_destructor(void *extra) {
 struct sddr09_card_info *info = (struct sddr09_card_info *)extra;

 if (!info)
  return;

 kfree(info->lba_to_pba);
 kfree(info->pba_to_lba);
}
