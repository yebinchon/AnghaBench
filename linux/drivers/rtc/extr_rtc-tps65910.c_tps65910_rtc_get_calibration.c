
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tps65910 {int regmap; } ;
struct device {int parent; } ;
typedef int s16 ;


 int NUM_COMP_REGS ;
 int TPS65910_RTC_COMP_LSB ;
 int TPS65910_RTC_CTRL ;
 unsigned int TPS65910_RTC_CTRL_AUTO_COMP ;
 int dev_err (struct device*,char*,int) ;
 struct tps65910* dev_get_drvdata (int ) ;
 int regmap_bulk_read (int ,int ,unsigned char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int tps65910_rtc_get_calibration(struct device *dev, int *calibration)
{
 unsigned char comp_data[NUM_COMP_REGS];
 struct tps65910 *tps = dev_get_drvdata(dev->parent);
 unsigned int ctrl;
 u16 value;
 int ret;

 ret = regmap_read(tps->regmap, TPS65910_RTC_CTRL, &ctrl);
 if (ret < 0)
  return ret;


 if (!(ctrl & TPS65910_RTC_CTRL_AUTO_COMP)) {
  *calibration = 0;
  return 0;
 }

 ret = regmap_bulk_read(tps->regmap, TPS65910_RTC_COMP_LSB, comp_data,
  NUM_COMP_REGS);
 if (ret < 0) {
  dev_err(dev, "rtc_get_calibration error: %d\n", ret);
  return ret;
 }

 value = (u16)comp_data[0] | ((u16)comp_data[1] << 8);

 *calibration = (s16)value;

 return 0;
}
