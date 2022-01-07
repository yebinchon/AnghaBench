
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8500_rtc {int irq_alarm; scalar_t__ rtc; scalar_t__ regbase; int lock; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int THIS_MODULE ;
 scalar_t__ VT8500_RTC_CR ;
 int VT8500_RTC_CR_ENABLE ;
 int dev_err (int *,char*,int,...) ;
 scalar_t__ devm_ioremap_resource (int *,struct resource*) ;
 struct vt8500_rtc* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct vt8500_rtc*) ;
 scalar_t__ devm_rtc_device_register (int *,char*,int *,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct vt8500_rtc*) ;
 int spin_lock_init (int *) ;
 int vt8500_rtc_irq ;
 int vt8500_rtc_ops ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int vt8500_rtc_probe(struct platform_device *pdev)
{
 struct vt8500_rtc *vt8500_rtc;
 struct resource *res;
 int ret;

 vt8500_rtc = devm_kzalloc(&pdev->dev,
      sizeof(struct vt8500_rtc), GFP_KERNEL);
 if (!vt8500_rtc)
  return -ENOMEM;

 spin_lock_init(&vt8500_rtc->lock);
 platform_set_drvdata(pdev, vt8500_rtc);

 vt8500_rtc->irq_alarm = platform_get_irq(pdev, 0);
 if (vt8500_rtc->irq_alarm < 0)
  return vt8500_rtc->irq_alarm;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 vt8500_rtc->regbase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(vt8500_rtc->regbase))
  return PTR_ERR(vt8500_rtc->regbase);


 writel(VT8500_RTC_CR_ENABLE,
        vt8500_rtc->regbase + VT8500_RTC_CR);

 vt8500_rtc->rtc = devm_rtc_device_register(&pdev->dev, "vt8500-rtc",
           &vt8500_rtc_ops, THIS_MODULE);
 if (IS_ERR(vt8500_rtc->rtc)) {
  ret = PTR_ERR(vt8500_rtc->rtc);
  dev_err(&pdev->dev,
   "Failed to register RTC device -> %d\n", ret);
  goto err_return;
 }

 ret = devm_request_irq(&pdev->dev, vt8500_rtc->irq_alarm,
    vt8500_rtc_irq, 0, "rtc alarm", vt8500_rtc);
 if (ret < 0) {
  dev_err(&pdev->dev, "can't get irq %i, err %d\n",
   vt8500_rtc->irq_alarm, ret);
  goto err_return;
 }

 return 0;

err_return:
 return ret;
}
