
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct tps80031_rtc {int irq; int rtc; } ;
struct rtc_time {int tm_year; int tm_mon; int tm_mday; } ;
struct TYPE_10__ {int parent; } ;
struct platform_device {TYPE_1__ dev; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RTC_YEAR_OFFSET ;
 int STOP_RTC ;
 int THIS_MODULE ;
 int TPS80031_RTC_CTRL_REG ;
 int TPS80031_RTC_POR_DAY ;
 int TPS80031_RTC_POR_MONTH ;
 int TPS80031_RTC_POR_YEAR ;
 int TPS80031_SLAVE_ID1 ;
 int clear_alarm_int_status (TYPE_1__*,struct tps80031_rtc*) ;
 int dev_err (TYPE_1__*,char*,int,...) ;
 int dev_name (TYPE_1__*) ;
 int device_set_wakeup_capable (TYPE_1__*,int) ;
 struct tps80031_rtc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int ,int *,int ,int ,int ,struct tps80031_rtc*) ;
 int devm_rtc_device_register (TYPE_1__*,int ,int *,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tps80031_rtc*) ;
 int tps80031_rtc_irq ;
 int tps80031_rtc_ops ;
 int tps80031_rtc_read_time (TYPE_1__*,struct rtc_time*) ;
 int tps80031_rtc_set_time (TYPE_1__*,struct rtc_time*) ;
 int tps80031_set_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int tps80031_rtc_probe(struct platform_device *pdev)
{
 struct tps80031_rtc *rtc;
 struct rtc_time tm;
 int ret;

 rtc = devm_kzalloc(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
 if (!rtc)
  return -ENOMEM;

 rtc->irq = platform_get_irq(pdev, 0);
 platform_set_drvdata(pdev, rtc);


 ret = tps80031_set_bits(pdev->dev.parent, TPS80031_SLAVE_ID1,
   TPS80031_RTC_CTRL_REG, STOP_RTC);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to start RTC. err = %d\n", ret);
  return ret;
 }


 tps80031_rtc_read_time(&pdev->dev, &tm);
 if ((tm.tm_year == RTC_YEAR_OFFSET + TPS80031_RTC_POR_YEAR) &&
  (tm.tm_mon == (TPS80031_RTC_POR_MONTH - 1)) &&
  (tm.tm_mday == TPS80031_RTC_POR_DAY)) {
  tm.tm_year = 2000;
  tm.tm_mday = 1;
  tm.tm_mon = 1;
  ret = tps80031_rtc_set_time(&pdev->dev, &tm);
  if (ret < 0) {
   dev_err(&pdev->dev,
    "RTC set time failed, err = %d\n", ret);
   return ret;
  }
 }


 ret = clear_alarm_int_status(&pdev->dev, rtc);
 if (ret < 0) {
  dev_err(&pdev->dev, "Clear alarm int failed, err = %d\n", ret);
  return ret;
 }

 rtc->rtc = devm_rtc_device_register(&pdev->dev, pdev->name,
          &tps80031_rtc_ops, THIS_MODULE);
 if (IS_ERR(rtc->rtc)) {
  ret = PTR_ERR(rtc->rtc);
  dev_err(&pdev->dev, "RTC registration failed, err %d\n", ret);
  return ret;
 }

 ret = devm_request_threaded_irq(&pdev->dev, rtc->irq, ((void*)0),
   tps80031_rtc_irq,
   IRQF_ONESHOT,
   dev_name(&pdev->dev), rtc);
 if (ret < 0) {
  dev_err(&pdev->dev, "request IRQ:%d failed, err = %d\n",
    rtc->irq, ret);
  return ret;
 }
 device_set_wakeup_capable(&pdev->dev, 1);
 return 0;
}
