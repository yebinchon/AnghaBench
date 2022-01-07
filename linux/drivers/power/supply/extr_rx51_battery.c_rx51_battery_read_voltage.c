
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx51_device_info {int dev; int channel_vbat; } ;


 int dev_err (int ,char*,int) ;
 int rx51_battery_read_adc (int ) ;

__attribute__((used)) static int rx51_battery_read_voltage(struct rx51_device_info *di)
{
 int voltage = rx51_battery_read_adc(di->channel_vbat);

 if (voltage < 0) {
  dev_err(di->dev, "Could not read ADC: %d\n", voltage);
  return voltage;
 }

 return 1000 * (10000 * voltage / 1705);
}
