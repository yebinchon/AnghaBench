
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx51_device_info {int dev; int channel_bsi; } ;


 int dev_err (int ,char*,int) ;
 int rx51_battery_read_adc (int ) ;

__attribute__((used)) static int rx51_battery_read_capacity(struct rx51_device_info *di)
{
 int capacity = rx51_battery_read_adc(di->channel_bsi);

 if (capacity < 0) {
  dev_err(di->dev, "Could not read ADC: %d\n", capacity);
  return capacity;
 }

 return 1280 * (1200 * capacity)/(1024 - capacity);
}
