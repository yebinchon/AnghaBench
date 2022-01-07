
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ab8500_charger {TYPE_1__* bm; } ;
struct TYPE_2__ {int* chg_input_curr; int n_chg_in_curr; } ;



__attribute__((used)) static int ab8500_vbus_in_curr_to_regval(struct ab8500_charger *di, int curr)
{
 int i;

 if (curr < di->bm->chg_input_curr[0])
  return 0;

 for (i = 0; i < di->bm->n_chg_in_curr; i++) {
  if (curr < di->bm->chg_input_curr[i])
   return i - 1;
 }


 i = di->bm->n_chg_in_curr - 1;
 if (curr == di->bm->chg_input_curr[i])
  return i;
 else
  return -1;
}
