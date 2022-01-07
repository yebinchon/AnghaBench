
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply_battery_ocv_table {int dummy; } ;
struct power_supply_battery_info {int dummy; } ;


 int EINVAL ;
 struct power_supply_battery_ocv_table* power_supply_find_ocv2cap_table (struct power_supply_battery_info*,int,int*) ;
 int power_supply_ocv2cap_simple (struct power_supply_battery_ocv_table*,int,int) ;

int power_supply_batinfo_ocv2cap(struct power_supply_battery_info *info,
     int ocv, int temp)
{
 struct power_supply_battery_ocv_table *table;
 int table_len;

 table = power_supply_find_ocv2cap_table(info, temp, &table_len);
 if (!table)
  return -EINVAL;

 return power_supply_ocv2cap_simple(table, table_len, ocv);
}
