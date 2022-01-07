
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int range_max; int range_min; int * ops; } ;
struct platform_device {int dev; } ;


 int ENODEV ;
 int ETIMEDOUT ;
 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 unsigned long RTC_CNTR_OK ;
 int RTC_TIMESTAMP_BEGIN_1900 ;
 int RTC_TIMESTAMP_END_2099 ;
 int SYS_CNTRL_TTS ;
 int SYS_COUNTER_CNTRL ;
 int SYS_TOYTRIM ;
 int dev_err (int *,char*) ;
 struct rtc_device* devm_rtc_allocate_device (int *) ;
 int ls1x_rtc_ops ;
 int platform_set_drvdata (struct platform_device*,struct rtc_device*) ;
 int readl (int ) ;
 int rtc_register_device (struct rtc_device*) ;
 int usleep_range (int,int) ;
 int writel (int,int ) ;

__attribute__((used)) static int ls1x_rtc_probe(struct platform_device *pdev)
{
 struct rtc_device *rtcdev;
 unsigned long v;

 v = readl(SYS_COUNTER_CNTRL);
 if (!(v & RTC_CNTR_OK)) {
  dev_err(&pdev->dev, "rtc counters not working\n");
  return -ENODEV;
 }


 if (readl(SYS_TOYTRIM) != 32767) {
  v = 0x100000;
  while ((readl(SYS_COUNTER_CNTRL) & SYS_CNTRL_TTS) && --v)
   usleep_range(1000, 3000);

  if (!v) {
   dev_err(&pdev->dev, "time out\n");
   return -ETIMEDOUT;
  }
  writel(32767, SYS_TOYTRIM);
 }

 while (readl(SYS_COUNTER_CNTRL) & SYS_CNTRL_TTS)
  usleep_range(1000, 3000);

 rtcdev = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(rtcdev))
  return PTR_ERR(rtcdev);

 platform_set_drvdata(pdev, rtcdev);
 rtcdev->ops = &ls1x_rtc_ops;
 rtcdev->range_min = RTC_TIMESTAMP_BEGIN_1900;
 rtcdev->range_max = RTC_TIMESTAMP_END_2099;

 return rtc_register_device(rtcdev);
}
