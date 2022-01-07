
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xd_info {int zone_cnt; TYPE_1__* zone; } ;
struct rtsx_chip {struct xd_info xd_card; } ;
struct TYPE_2__ {struct TYPE_2__* free_table; struct TYPE_2__* l2p_table; } ;


 int vfree (TYPE_1__*) ;

void xd_free_l2p_tbl(struct rtsx_chip *chip)
{
 struct xd_info *xd_card = &chip->xd_card;
 int i = 0;

 if (xd_card->zone) {
  for (i = 0; i < xd_card->zone_cnt; i++) {
   vfree(xd_card->zone[i].l2p_table);
   xd_card->zone[i].l2p_table = ((void*)0);
   vfree(xd_card->zone[i].free_table);
   xd_card->zone[i].free_table = ((void*)0);
  }
  vfree(xd_card->zone);
  xd_card->zone = ((void*)0);
 }
}
