
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8973_chip {int* lru_index; int* curr_vout_val; } ;


 int MAX8973_MAX_VOUT_REG ;
 int MAX8973_VOUT ;

__attribute__((used)) static bool find_voltage_set_register(struct max8973_chip *tps,
  int req_vsel, int *vout_reg, int *gpio_val)
{
 int i;
 bool found = 0;
 int new_vout_reg = tps->lru_index[MAX8973_MAX_VOUT_REG - 1];
 int found_index = MAX8973_MAX_VOUT_REG - 1;

 for (i = 0; i < MAX8973_MAX_VOUT_REG; ++i) {
  if (tps->curr_vout_val[tps->lru_index[i]] == req_vsel) {
   new_vout_reg = tps->lru_index[i];
   found_index = i;
   found = 1;
   goto update_lru_index;
  }
 }

update_lru_index:
 for (i = found_index; i > 0; i--)
  tps->lru_index[i] = tps->lru_index[i - 1];

 tps->lru_index[0] = new_vout_reg;
 *gpio_val = new_vout_reg;
 *vout_reg = MAX8973_VOUT + new_vout_reg;
 return found;
}
