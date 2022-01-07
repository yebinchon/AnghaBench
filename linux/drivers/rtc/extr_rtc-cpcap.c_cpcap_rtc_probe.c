
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct cpcap_rtc {void* update_irq; void* alarm_irq; int vendor; int regmap; int rtc_dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_TRIGGER_NONE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int cpcap_get_vendor (struct device*,int ,int *) ;
 int cpcap_rtc_alarm_irq ;
 int cpcap_rtc_ops ;
 int cpcap_rtc_update_irq ;
 int dev_err (struct device*,char*,int) ;
 int dev_get_regmap (int ,int *) ;
 int device_init_wakeup (struct device*,int) ;
 struct cpcap_rtc* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,void*,int *,int ,int ,char*,struct cpcap_rtc*) ;
 int devm_rtc_device_register (struct device*,char*,int *,int ) ;
 int disable_irq (void*) ;
 void* platform_get_irq (struct platform_device*,int) ;
 int platform_set_drvdata (struct platform_device*,struct cpcap_rtc*) ;

__attribute__((used)) static int cpcap_rtc_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct cpcap_rtc *rtc;
 int err;

 rtc = devm_kzalloc(dev, sizeof(*rtc), GFP_KERNEL);
 if (!rtc)
  return -ENOMEM;

 rtc->regmap = dev_get_regmap(dev->parent, ((void*)0));
 if (!rtc->regmap)
  return -ENODEV;

 platform_set_drvdata(pdev, rtc);
 rtc->rtc_dev = devm_rtc_device_register(dev, "cpcap_rtc",
      &cpcap_rtc_ops, THIS_MODULE);

 if (IS_ERR(rtc->rtc_dev))
  return PTR_ERR(rtc->rtc_dev);

 err = cpcap_get_vendor(dev, rtc->regmap, &rtc->vendor);
 if (err)
  return err;

 rtc->alarm_irq = platform_get_irq(pdev, 0);
 err = devm_request_threaded_irq(dev, rtc->alarm_irq, ((void*)0),
     cpcap_rtc_alarm_irq, IRQF_TRIGGER_NONE,
     "rtc_alarm", rtc);
 if (err) {
  dev_err(dev, "Could not request alarm irq: %d\n", err);
  return err;
 }
 disable_irq(rtc->alarm_irq);







 rtc->update_irq = platform_get_irq(pdev, 1);
 err = devm_request_threaded_irq(dev, rtc->update_irq, ((void*)0),
     cpcap_rtc_update_irq, IRQF_TRIGGER_NONE,
     "rtc_1hz", rtc);
 if (err) {
  dev_err(dev, "Could not request update irq: %d\n", err);
  return err;
 }
 disable_irq(rtc->update_irq);

 err = device_init_wakeup(dev, 1);
 if (err) {
  dev_err(dev, "wakeup initialization failed (%d)\n", err);

 }

 return 0;
}
