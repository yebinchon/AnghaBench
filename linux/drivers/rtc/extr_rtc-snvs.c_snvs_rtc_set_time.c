
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snvs_rtc_data {scalar_t__ offset; int regmap; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 unsigned long CNTR_TO_SECS_SH ;
 scalar_t__ SNVS_LPSRTCLR ;
 scalar_t__ SNVS_LPSRTCMR ;
 struct snvs_rtc_data* dev_get_drvdata (struct device*) ;
 int regmap_write (int ,scalar_t__,unsigned long) ;
 unsigned long rtc_tm_to_time64 (struct rtc_time*) ;
 int snvs_rtc_enable (struct snvs_rtc_data*,int) ;

__attribute__((used)) static int snvs_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 struct snvs_rtc_data *data = dev_get_drvdata(dev);
 unsigned long time = rtc_tm_to_time64(tm);
 int ret;


 ret = snvs_rtc_enable(data, 0);
 if (ret)
  return ret;


 regmap_write(data->regmap, data->offset + SNVS_LPSRTCLR, time << CNTR_TO_SECS_SH);
 regmap_write(data->regmap, data->offset + SNVS_LPSRTCMR, time >> (32 - CNTR_TO_SECS_SH));


 ret = snvs_rtc_enable(data, 1);

 return ret;
}
