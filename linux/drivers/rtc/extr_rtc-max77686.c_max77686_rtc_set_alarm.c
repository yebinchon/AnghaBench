
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtc_wkalrm {scalar_t__ enabled; int time; } ;
struct max77686_rtc_info {int lock; int dev; TYPE_1__* drv_data; int rtc_regmap; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int * map; } ;


 int ARRAY_SIZE (int *) ;
 int MAX77686_RTC_WRITE ;
 size_t REG_ALARM1_SEC ;
 int RTC_NR_TIME ;
 int dev_err (int ,char*,int) ;
 struct max77686_rtc_info* dev_get_drvdata (struct device*) ;
 int max77686_rtc_start_alarm (struct max77686_rtc_info*) ;
 int max77686_rtc_stop_alarm (struct max77686_rtc_info*) ;
 int max77686_rtc_tm_to_data (int *,int *,struct max77686_rtc_info*) ;
 int max77686_rtc_update (struct max77686_rtc_info*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_write (int ,int ,int *,int ) ;

__attribute__((used)) static int max77686_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct max77686_rtc_info *info = dev_get_drvdata(dev);
 u8 data[RTC_NR_TIME];
 int ret;

 ret = max77686_rtc_tm_to_data(&alrm->time, data, info);
 if (ret < 0)
  return ret;

 mutex_lock(&info->lock);

 ret = max77686_rtc_stop_alarm(info);
 if (ret < 0)
  goto out;

 ret = regmap_bulk_write(info->rtc_regmap,
    info->drv_data->map[REG_ALARM1_SEC],
    data, ARRAY_SIZE(data));

 if (ret < 0) {
  dev_err(info->dev, "Fail to write alarm reg(%d)\n", ret);
  goto out;
 }

 ret = max77686_rtc_update(info, MAX77686_RTC_WRITE);
 if (ret < 0)
  goto out;

 if (alrm->enabled)
  ret = max77686_rtc_start_alarm(info);
out:
 mutex_unlock(&info->lock);
 return ret;
}
