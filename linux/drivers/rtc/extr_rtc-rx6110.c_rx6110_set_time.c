
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rx6110_data {int regmap; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int RTC_NR_TIME ;
 int RX6110_BIT_CTRL_STOP ;
 int RX6110_BIT_FLAG_VLF ;
 int RX6110_REG_CTRL ;
 int RX6110_REG_FLAG ;
 int RX6110_REG_SEC ;
 struct rx6110_data* dev_get_drvdata (struct device*) ;
 int regmap_bulk_write (int ,int ,int *,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rx6110_rtc_tm_to_data (struct rtc_time*,int *) ;

__attribute__((used)) static int rx6110_set_time(struct device *dev, struct rtc_time *tm)
{
 struct rx6110_data *rx6110 = dev_get_drvdata(dev);
 u8 data[RTC_NR_TIME];
 int ret;

 ret = rx6110_rtc_tm_to_data(tm, data);
 if (ret < 0)
  return ret;


 ret = regmap_update_bits(rx6110->regmap, RX6110_REG_CTRL,
     RX6110_BIT_CTRL_STOP, RX6110_BIT_CTRL_STOP);
 if (ret)
  return ret;

 ret = regmap_bulk_write(rx6110->regmap, RX6110_REG_SEC, data,
    RTC_NR_TIME);
 if (ret)
  return ret;


 ret = regmap_update_bits(rx6110->regmap, RX6110_REG_FLAG,
     RX6110_BIT_FLAG_VLF, 0);
 if (ret)
  return ret;


 ret = regmap_update_bits(rx6110->regmap, RX6110_REG_CTRL,
     RX6110_BIT_CTRL_STOP, 0);

 return ret;
}
