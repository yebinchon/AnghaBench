
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100_rtc {int rtsr; struct rtc_device* rtc; struct rtc_device* clk; int rcnr; int rttr; int lock; } ;
struct rtc_device {int max_user_freq; } ;
struct platform_device {int name; int dev; } ;


 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 int RTC_DEF_DIVIDER ;
 int RTC_DEF_TRIM ;
 int RTC_FREQ ;
 int RTSR_AL ;
 int RTSR_HZ ;
 int THIS_MODULE ;
 int clk_disable_unprepare (struct rtc_device*) ;
 int clk_prepare_enable (struct rtc_device*) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 struct rtc_device* devm_clk_get (int *,int *) ;
 struct rtc_device* devm_rtc_device_register (int *,int ,int *,int ) ;
 scalar_t__ readl_relaxed (int ) ;
 int sa1100_rtc_ops ;
 int spin_lock_init (int *) ;
 int writel_relaxed (int,int ) ;

int sa1100_rtc_init(struct platform_device *pdev, struct sa1100_rtc *info)
{
 struct rtc_device *rtc;
 int ret;

 spin_lock_init(&info->lock);

 info->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(info->clk)) {
  dev_err(&pdev->dev, "failed to find rtc clock source\n");
  return PTR_ERR(info->clk);
 }

 ret = clk_prepare_enable(info->clk);
 if (ret)
  return ret;







 if (readl_relaxed(info->rttr) == 0) {
  writel_relaxed(RTC_DEF_DIVIDER + (RTC_DEF_TRIM << 16), info->rttr);
  dev_warn(&pdev->dev, "warning: "
   "initializing default clock divider/trim value\n");

  writel_relaxed(0, info->rcnr);
 }

 rtc = devm_rtc_device_register(&pdev->dev, pdev->name, &sa1100_rtc_ops,
     THIS_MODULE);
 if (IS_ERR(rtc)) {
  clk_disable_unprepare(info->clk);
  return PTR_ERR(rtc);
 }
 info->rtc = rtc;

 rtc->max_user_freq = RTC_FREQ;
 writel_relaxed(RTSR_AL | RTSR_HZ, info->rtsr);

 return 0;
}
