
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm3130 {int* regs; int client; } ;
struct device {int dummy; } ;





 size_t FM3130_RTC_CONTROL ;
 int FM3130_RTC_CONTROL_BIT_READ ;
 int FM3130_RTC_CONTROL_BIT_WRITE ;
 int dev_dbg (struct device*,char*,int) ;
 struct fm3130* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (int ,size_t) ;
 int i2c_smbus_write_byte_data (int ,size_t,int) ;

__attribute__((used)) static void fm3130_rtc_mode(struct device *dev, int mode)
{
 struct fm3130 *fm3130 = dev_get_drvdata(dev);

 fm3130->regs[FM3130_RTC_CONTROL] =
  i2c_smbus_read_byte_data(fm3130->client, FM3130_RTC_CONTROL);
 switch (mode) {
 case 130:
  fm3130->regs[FM3130_RTC_CONTROL] &=
   ~(FM3130_RTC_CONTROL_BIT_WRITE |
   FM3130_RTC_CONTROL_BIT_READ);
  break;
 case 128:
  fm3130->regs[FM3130_RTC_CONTROL] |= FM3130_RTC_CONTROL_BIT_WRITE;
  break;
 case 129:
  fm3130->regs[FM3130_RTC_CONTROL] |= FM3130_RTC_CONTROL_BIT_READ;
  break;
 default:
  dev_dbg(dev, "invalid mode %d\n", mode);
  break;
 }

 i2c_smbus_write_byte_data(fm3130->client,
   FM3130_RTC_CONTROL, fm3130->regs[FM3130_RTC_CONTROL]);
}
