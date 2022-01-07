
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ms_info {int segment_cnt; TYPE_1__* segment; } ;
struct rtsx_chip {struct ms_info ms_card; } ;
struct TYPE_2__ {struct TYPE_2__* free_table; struct TYPE_2__* l2p_table; } ;


 int vfree (TYPE_1__*) ;

void ms_free_l2p_tbl(struct rtsx_chip *chip)
{
 struct ms_info *ms_card = &chip->ms_card;
 int i = 0;

 if (ms_card->segment) {
  for (i = 0; i < ms_card->segment_cnt; i++) {
   vfree(ms_card->segment[i].l2p_table);
   ms_card->segment[i].l2p_table = ((void*)0);
   vfree(ms_card->segment[i].free_table);
   ms_card->segment[i].free_table = ((void*)0);
  }
  vfree(ms_card->segment);
  ms_card->segment = ((void*)0);
 }
}
