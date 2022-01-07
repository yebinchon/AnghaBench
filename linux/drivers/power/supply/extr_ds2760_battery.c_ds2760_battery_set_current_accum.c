
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds2760_device_info {int dev; } ;


 int DS2760_CURRENT_ACCUM_MSB ;
 int dev_warn (int ,char*) ;
 int w1_ds2760_write (int ,unsigned char*,int ,int) ;

__attribute__((used)) static void ds2760_battery_set_current_accum(struct ds2760_device_info *di,
          unsigned int acr_val)
{
 unsigned char acr[2];


 acr_val *= 4L;
 acr_val /= 1000;

 acr[0] = acr_val >> 8;
 acr[1] = acr_val & 0xff;

 if (w1_ds2760_write(di->dev, acr, DS2760_CURRENT_ACCUM_MSB, 2) < 2)
  dev_warn(di->dev, "ACR write failed\n");
}
