
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct lp8788_rtc {int rdev; int alarm; struct lp8788* lp; } ;
struct lp8788 {int dev; TYPE_1__* pdata; } ;
struct TYPE_2__ {int alarm_sel; } ;


 int DEFAULT_ALARM_SEL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*) ;
 struct lp8788* dev_get_drvdata (int ) ;
 int dev_warn (int ,char*) ;
 int device_init_wakeup (struct device*,int) ;
 struct lp8788_rtc* devm_kzalloc (struct device*,int,int ) ;
 int devm_rtc_device_register (struct device*,char*,int *,int ) ;
 scalar_t__ lp8788_alarm_irq_register (struct platform_device*,struct lp8788_rtc*) ;
 int lp8788_rtc_ops ;
 int platform_set_drvdata (struct platform_device*,struct lp8788_rtc*) ;

__attribute__((used)) static int lp8788_rtc_probe(struct platform_device *pdev)
{
 struct lp8788 *lp = dev_get_drvdata(pdev->dev.parent);
 struct lp8788_rtc *rtc;
 struct device *dev = &pdev->dev;

 rtc = devm_kzalloc(dev, sizeof(struct lp8788_rtc), GFP_KERNEL);
 if (!rtc)
  return -ENOMEM;

 rtc->lp = lp;
 rtc->alarm = lp->pdata ? lp->pdata->alarm_sel : DEFAULT_ALARM_SEL;
 platform_set_drvdata(pdev, rtc);

 device_init_wakeup(dev, 1);

 rtc->rdev = devm_rtc_device_register(dev, "lp8788_rtc",
     &lp8788_rtc_ops, THIS_MODULE);
 if (IS_ERR(rtc->rdev)) {
  dev_err(dev, "can not register rtc device\n");
  return PTR_ERR(rtc->rdev);
 }

 if (lp8788_alarm_irq_register(pdev, rtc))
  dev_warn(lp->dev, "no rtc irq handler\n");

 return 0;
}
