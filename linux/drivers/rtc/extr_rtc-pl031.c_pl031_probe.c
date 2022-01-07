
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rtc_class_ops {int * alarm_irq_enable; int * set_alarm; int * read_alarm; } ;
struct pl031_vendor_data {int irqflags; scalar_t__ st_weekday; scalar_t__ clockwatch; int ops; } ;
struct pl031_local {TYPE_1__* rtc; scalar_t__ base; struct pl031_vendor_data* vendor; } ;
struct amba_id {struct pl031_vendor_data* data; } ;
struct TYPE_7__ {int start; } ;
struct amba_device {scalar_t__* irq; int dev; TYPE_2__ res; } ;
struct TYPE_6__ {struct rtc_class_ops* ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 scalar_t__ RTC_CR ;
 unsigned long RTC_CR_CWEN ;
 unsigned long RTC_CR_EN ;
 scalar_t__ RTC_DR ;
 scalar_t__ RTC_LR ;
 unsigned long RTC_MDAY_MASK ;
 unsigned long RTC_MON_MASK ;
 unsigned long RTC_WDAY_MASK ;
 int RTC_WDAY_SHIFT ;
 scalar_t__ RTC_YDR ;
 scalar_t__ RTC_YLR ;
 int amba_manf (struct amba_device*) ;
 int amba_release_regions (struct amba_device*) ;
 int amba_request_regions (struct amba_device*,int *) ;
 int amba_rev (struct amba_device*) ;
 int amba_set_drvdata (struct amba_device*,struct pl031_local*) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_pm_set_wake_irq (int *,scalar_t__) ;
 int device_init_wakeup (int *,int) ;
 scalar_t__ devm_ioremap (int *,int ,int ) ;
 struct rtc_class_ops* devm_kmemdup (int *,int *,int,int ) ;
 struct pl031_local* devm_kzalloc (int *,int,int ) ;
 TYPE_1__* devm_rtc_allocate_device (int *) ;
 int pl031_interrupt ;
 int readl (scalar_t__) ;
 int request_irq (scalar_t__,int ,int ,char*,struct pl031_local*) ;
 int resource_size (TYPE_2__*) ;
 int rtc_register_device (TYPE_1__*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int pl031_probe(struct amba_device *adev, const struct amba_id *id)
{
 int ret;
 struct pl031_local *ldata;
 struct pl031_vendor_data *vendor = id->data;
 struct rtc_class_ops *ops;
 unsigned long time, data;

 ret = amba_request_regions(adev, ((void*)0));
 if (ret)
  goto err_req;

 ldata = devm_kzalloc(&adev->dev, sizeof(struct pl031_local),
        GFP_KERNEL);
 ops = devm_kmemdup(&adev->dev, &vendor->ops, sizeof(vendor->ops),
      GFP_KERNEL);
 if (!ldata || !ops) {
  ret = -ENOMEM;
  goto out;
 }

 ldata->vendor = vendor;
 ldata->base = devm_ioremap(&adev->dev, adev->res.start,
       resource_size(&adev->res));
 if (!ldata->base) {
  ret = -ENOMEM;
  goto out;
 }

 amba_set_drvdata(adev, ldata);

 dev_dbg(&adev->dev, "designer ID = 0x%02x\n", amba_manf(adev));
 dev_dbg(&adev->dev, "revision = 0x%01x\n", amba_rev(adev));

 data = readl(ldata->base + RTC_CR);

 if (vendor->clockwatch)
  data |= RTC_CR_CWEN;
 else
  data |= RTC_CR_EN;
 writel(data, ldata->base + RTC_CR);





 if (vendor->st_weekday) {
  if (readl(ldata->base + RTC_YDR) == 0x2000) {
   time = readl(ldata->base + RTC_DR);
   if ((time &
        (RTC_MON_MASK | RTC_MDAY_MASK | RTC_WDAY_MASK))
       == 0x02120000) {
    time = time | (0x7 << RTC_WDAY_SHIFT);
    writel(0x2000, ldata->base + RTC_YLR);
    writel(time, ldata->base + RTC_LR);
   }
  }
 }

 if (!adev->irq[0]) {

  ops->read_alarm = ((void*)0);
  ops->set_alarm = ((void*)0);
  ops->alarm_irq_enable = ((void*)0);
 }

 device_init_wakeup(&adev->dev, 1);
 ldata->rtc = devm_rtc_allocate_device(&adev->dev);
 if (IS_ERR(ldata->rtc))
  return PTR_ERR(ldata->rtc);

 ldata->rtc->ops = ops;

 ret = rtc_register_device(ldata->rtc);
 if (ret)
  goto out;

 if (adev->irq[0]) {
  ret = request_irq(adev->irq[0], pl031_interrupt,
      vendor->irqflags, "rtc-pl031", ldata);
  if (ret)
   goto out;
  dev_pm_set_wake_irq(&adev->dev, adev->irq[0]);
 }
 return 0;

out:
 amba_release_regions(adev);
err_req:

 return ret;
}
