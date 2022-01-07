
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx51_device_info {int dev; int channel_temp; } ;


 int ARRAY_SIZE (int*) ;
 int INT_MAX ;
 int INT_MIN ;
 int dev_err (int ,char*,int) ;
 int rx51_battery_read_adc (int ) ;
 int* rx51_temp_table1 ;
 int* rx51_temp_table2 ;
 int rx51_temp_table2_first ;

__attribute__((used)) static int rx51_battery_read_temperature(struct rx51_device_info *di)
{
 int min = 0;
 int max = ARRAY_SIZE(rx51_temp_table2) - 1;
 int raw = rx51_battery_read_adc(di->channel_temp);

 if (raw < 0)
  dev_err(di->dev, "Could not read ADC: %d\n", raw);


 if (raw <= 0)
  return INT_MAX;


 if (raw >= (1 << 10))
  return INT_MIN;


 if (raw < ARRAY_SIZE(rx51_temp_table1))
  return rx51_temp_table1[raw] * 10;


 while (max - min > 1) {
  int mid = (max + min) / 2;
  if (rx51_temp_table2[mid] <= raw)
   min = mid;
  else if (rx51_temp_table2[mid] > raw)
   max = mid;
  if (rx51_temp_table2[mid] == raw)
   break;
 }

 return (rx51_temp_table2_first - min) * 10;
}
