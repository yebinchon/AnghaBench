
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {unsigned long long range_max; int max_user_freq; int * ops; } ;
struct resource {int start; } ;
struct platform_device {int num_resources; int dev; } ;


 int EBUSY ;
 int ECMPHREG ;
 int ECMPLREG ;
 int ECMPMREG ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct rtc_device*) ;
 int MAX_PERIODIC_RATE ;
 int PTR_ERR (struct rtc_device*) ;
 int RTCL1HREG ;
 int RTCL1LREG ;
 scalar_t__ aie_irq ;
 int dev_info (int *,char*) ;
 void* devm_ioremap (int *,int ,int ) ;
 int devm_request_irq (int *,scalar_t__,int ,int ,char*,struct platform_device*) ;
 struct rtc_device* devm_rtc_allocate_device (int *) ;
 int disable_irq (scalar_t__) ;
 int elapsedtime_interrupt ;
 scalar_t__ pie_irq ;
 scalar_t__ platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct rtc_device*) ;
 int resource_size (struct resource*) ;
 int * rtc1_base ;
 int rtc1_write (int ,int ) ;
 int * rtc2_base ;
 int rtc_lock ;
 int rtc_register_device (struct rtc_device*) ;
 int rtclong1_interrupt ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int vr41xx_rtc_ops ;

__attribute__((used)) static int rtc_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct rtc_device *rtc;
 int retval;

 if (pdev->num_resources != 4)
  return -EBUSY;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -EBUSY;

 rtc1_base = devm_ioremap(&pdev->dev, res->start, resource_size(res));
 if (!rtc1_base)
  return -EBUSY;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (!res) {
  retval = -EBUSY;
  goto err_rtc1_iounmap;
 }

 rtc2_base = devm_ioremap(&pdev->dev, res->start, resource_size(res));
 if (!rtc2_base) {
  retval = -EBUSY;
  goto err_rtc1_iounmap;
 }

 rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(rtc)) {
  retval = PTR_ERR(rtc);
  goto err_iounmap_all;
 }

 rtc->ops = &vr41xx_rtc_ops;


 rtc->range_max = (1ULL << 33) - 1;
 rtc->max_user_freq = MAX_PERIODIC_RATE;

 spin_lock_irq(&rtc_lock);

 rtc1_write(ECMPLREG, 0);
 rtc1_write(ECMPMREG, 0);
 rtc1_write(ECMPHREG, 0);
 rtc1_write(RTCL1LREG, 0);
 rtc1_write(RTCL1HREG, 0);

 spin_unlock_irq(&rtc_lock);

 aie_irq = platform_get_irq(pdev, 0);
 if (aie_irq <= 0) {
  retval = -EBUSY;
  goto err_iounmap_all;
 }

 retval = devm_request_irq(&pdev->dev, aie_irq, elapsedtime_interrupt, 0,
    "elapsed_time", pdev);
 if (retval < 0)
  goto err_iounmap_all;

 pie_irq = platform_get_irq(pdev, 1);
 if (pie_irq <= 0) {
  retval = -EBUSY;
  goto err_iounmap_all;
 }

 retval = devm_request_irq(&pdev->dev, pie_irq, rtclong1_interrupt, 0,
    "rtclong1", pdev);
 if (retval < 0)
  goto err_iounmap_all;

 platform_set_drvdata(pdev, rtc);

 disable_irq(aie_irq);
 disable_irq(pie_irq);

 dev_info(&pdev->dev, "Real Time Clock of NEC VR4100 series\n");

 retval = rtc_register_device(rtc);
 if (retval)
  goto err_iounmap_all;

 return 0;

err_iounmap_all:
 rtc2_base = ((void*)0);

err_rtc1_iounmap:
 rtc1_base = ((void*)0);

 return retval;
}
