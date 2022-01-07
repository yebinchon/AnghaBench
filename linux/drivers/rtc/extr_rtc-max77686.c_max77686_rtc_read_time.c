
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtc_time {int dummy; } ;
struct max77686_rtc_info {int lock; int dev; TYPE_1__* drv_data; int rtc_regmap; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int * map; } ;


 int ARRAY_SIZE (int *) ;
 int MAX77686_RTC_READ ;
 size_t REG_RTC_SEC ;
 int RTC_NR_TIME ;
 int dev_err (int ,char*,int) ;
 struct max77686_rtc_info* dev_get_drvdata (struct device*) ;
 int max77686_rtc_data_to_tm (int *,struct rtc_time*,struct max77686_rtc_info*) ;
 int max77686_rtc_update (struct max77686_rtc_info*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int *,int ) ;

__attribute__((used)) static int max77686_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 struct max77686_rtc_info *info = dev_get_drvdata(dev);
 u8 data[RTC_NR_TIME];
 int ret;

 mutex_lock(&info->lock);

 ret = max77686_rtc_update(info, MAX77686_RTC_READ);
 if (ret < 0)
  goto out;

 ret = regmap_bulk_read(info->rtc_regmap,
          info->drv_data->map[REG_RTC_SEC],
          data, ARRAY_SIZE(data));
 if (ret < 0) {
  dev_err(info->dev, "Fail to read time reg(%d)\n", ret);
  goto out;
 }

 max77686_rtc_data_to_tm(data, tm, info);

out:
 mutex_unlock(&info->lock);
 return ret;
}
