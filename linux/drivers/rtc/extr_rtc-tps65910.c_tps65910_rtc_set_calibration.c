
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tps65910 {int regmap; } ;
struct device {int parent; } ;
typedef scalar_t__ s16 ;


 int EINVAL ;
 int NUM_COMP_REGS ;
 int TPS65910_RTC_COMP_LSB ;
 int TPS65910_RTC_CTRL ;
 int TPS65910_RTC_CTRL_AUTO_COMP ;
 int dev_err (struct device*,char*,int) ;
 struct tps65910* dev_get_drvdata (int ) ;
 int regmap_bulk_write (int ,int ,unsigned char*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int tps65910_rtc_set_calibration(struct device *dev, int calibration)
{
 unsigned char comp_data[NUM_COMP_REGS];
 struct tps65910 *tps = dev_get_drvdata(dev->parent);
 s16 value;
 int ret;
 if ((calibration < -32768) || (calibration > 32766)) {
  dev_err(dev, "RTC calibration value out of range: %d\n",
   calibration);
  return -EINVAL;
 }

 value = (s16)calibration;

 comp_data[0] = (u16)value & 0xFF;
 comp_data[1] = ((u16)value >> 8) & 0xFF;


 ret = regmap_bulk_write(tps->regmap, TPS65910_RTC_COMP_LSB,
  comp_data, NUM_COMP_REGS);
 if (ret < 0) {
  dev_err(dev, "rtc_set_calibration error: %d\n", ret);
  return ret;
 }


 ret = regmap_update_bits(tps->regmap, TPS65910_RTC_CTRL,
  TPS65910_RTC_CTRL_AUTO_COMP, TPS65910_RTC_CTRL_AUTO_COMP);
 if (ret < 0)
  dev_err(dev, "auto_comp enable failed with error: %d\n", ret);

 return ret;
}
