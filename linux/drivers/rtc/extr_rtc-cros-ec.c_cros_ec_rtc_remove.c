
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct cros_ec_rtc {int notifier; TYPE_1__* cros_ec; } ;
struct TYPE_2__ {int event_notifier; } ;


 int blocking_notifier_chain_unregister (int *,int *) ;
 int dev_err (struct device*,char*) ;
 struct cros_ec_rtc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cros_ec_rtc_remove(struct platform_device *pdev)
{
 struct cros_ec_rtc *cros_ec_rtc = platform_get_drvdata(pdev);
 struct device *dev = &pdev->dev;
 int ret;

 ret = blocking_notifier_chain_unregister(
    &cros_ec_rtc->cros_ec->event_notifier,
    &cros_ec_rtc->notifier);
 if (ret) {
  dev_err(dev, "failed to unregister notifier\n");
  return ret;
 }

 return 0;
}
