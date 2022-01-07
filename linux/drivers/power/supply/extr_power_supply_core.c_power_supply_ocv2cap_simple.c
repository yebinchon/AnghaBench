
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply_battery_ocv_table {int ocv; int capacity; } ;



int power_supply_ocv2cap_simple(struct power_supply_battery_ocv_table *table,
    int table_len, int ocv)
{
 int i, cap, tmp;

 for (i = 0; i < table_len; i++)
  if (ocv > table[i].ocv)
   break;

 if (i > 0 && i < table_len) {
  tmp = (table[i - 1].capacity - table[i].capacity) *
   (ocv - table[i].ocv);
  tmp /= table[i - 1].ocv - table[i].ocv;
  cap = tmp + table[i].capacity;
 } else if (i == 0) {
  cap = table[0].capacity;
 } else {
  cap = table[table_len - 1].capacity;
 }

 return cap;
}
