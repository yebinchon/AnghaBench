
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int func_level; } ;
struct qeth_card {TYPE_1__ info; } ;





 int QETH_IDX_FUNC_LEVEL_IQD ;
 int QETH_IDX_FUNC_LEVEL_OSD ;

__attribute__((used)) static void qeth_init_func_level(struct qeth_card *card)
{
 switch (card->info.type) {
 case 130:
  card->info.func_level = QETH_IDX_FUNC_LEVEL_IQD;
  break;
 case 129:
 case 128:
  card->info.func_level = QETH_IDX_FUNC_LEVEL_OSD;
  break;
 default:
  break;
 }
}
