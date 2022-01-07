
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_rtc_dev {unsigned long alarm; scalar_t__ base; } ;
struct rtc_time {int dummy; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ SUN6I_ALRM_COUNTER ;
 unsigned long U32_MAX ;
 int dev_err (struct device*,char*) ;
 struct sun6i_rtc_dev* dev_get_drvdata (struct device*) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 int sun6i_rtc_gettime (struct device*,struct rtc_time*) ;
 int sun6i_rtc_setaie (int ,struct sun6i_rtc_dev*) ;
 int usleep_range (int,int) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int sun6i_rtc_setalarm(struct device *dev, struct rtc_wkalrm *wkalrm)
{
 struct sun6i_rtc_dev *chip = dev_get_drvdata(dev);
 struct rtc_time *alrm_tm = &wkalrm->time;
 struct rtc_time tm_now;
 unsigned long time_now = 0;
 unsigned long time_set = 0;
 unsigned long time_gap = 0;
 int ret = 0;

 ret = sun6i_rtc_gettime(dev, &tm_now);
 if (ret < 0) {
  dev_err(dev, "Error in getting time\n");
  return -EINVAL;
 }

 rtc_tm_to_time(alrm_tm, &time_set);
 rtc_tm_to_time(&tm_now, &time_now);
 if (time_set <= time_now) {
  dev_err(dev, "Date to set in the past\n");
  return -EINVAL;
 }

 time_gap = time_set - time_now;

 if (time_gap > U32_MAX) {
  dev_err(dev, "Date too far in the future\n");
  return -EINVAL;
 }

 sun6i_rtc_setaie(0, chip);
 writel(0, chip->base + SUN6I_ALRM_COUNTER);
 usleep_range(100, 300);

 writel(time_gap, chip->base + SUN6I_ALRM_COUNTER);
 chip->alarm = time_set;

 sun6i_rtc_setaie(wkalrm->enabled, chip);

 return 0;
}
