
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct resource {int start; } ;
struct device {int dummy; } ;
struct TYPE_10__ {int irq; struct device* dev; TYPE_1__* rtc; } ;
struct TYPE_9__ {int dev; int * ops; } ;


 int EBUSY ;
 int ENODEV ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 unsigned char RTC_24H ;
 int RTC_AIE ;
 int RTC_CONTROL ;
 unsigned char RTC_DM_BINARY ;
 int RTC_PIE ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*) ;
 int dev_name (int *) ;
 int dev_set_drvdata (struct device*,TYPE_2__*) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,TYPE_1__*) ;
 struct resource* devm_request_mem_region (struct device*,int ,int ,int ) ;
 TYPE_1__* devm_rtc_allocate_device (struct device*) ;
 int driver_name ;
 int mrst_irq_disable (TYPE_2__*,int) ;
 TYPE_2__ mrst_rtc ;
 int mrst_rtc_irq ;
 int mrst_rtc_ops ;
 int rename_region (struct resource*,int ) ;
 int resource_size (struct resource*) ;
 int rtc_lock ;
 int rtc_register_device (TYPE_1__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 unsigned char vrtc_cmos_read (int ) ;

__attribute__((used)) static int vrtc_mrst_do_probe(struct device *dev, struct resource *iomem,
         int rtc_irq)
{
 int retval = 0;
 unsigned char rtc_control;


 if (mrst_rtc.dev)
  return -EBUSY;

 if (!iomem)
  return -ENODEV;

 iomem = devm_request_mem_region(dev, iomem->start, resource_size(iomem),
     driver_name);
 if (!iomem) {
  dev_dbg(dev, "i/o mem already in use.\n");
  return -EBUSY;
 }

 mrst_rtc.irq = rtc_irq;
 mrst_rtc.dev = dev;
 dev_set_drvdata(dev, &mrst_rtc);

 mrst_rtc.rtc = devm_rtc_allocate_device(dev);
 if (IS_ERR(mrst_rtc.rtc))
  return PTR_ERR(mrst_rtc.rtc);

 mrst_rtc.rtc->ops = &mrst_rtc_ops;

 rename_region(iomem, dev_name(&mrst_rtc.rtc->dev));

 spin_lock_irq(&rtc_lock);
 mrst_irq_disable(&mrst_rtc, RTC_PIE | RTC_AIE);
 rtc_control = vrtc_cmos_read(RTC_CONTROL);
 spin_unlock_irq(&rtc_lock);

 if (!(rtc_control & RTC_24H) || (rtc_control & (RTC_DM_BINARY)))
  dev_dbg(dev, "TODO: support more than 24-hr BCD mode\n");

 if (rtc_irq) {
  retval = devm_request_irq(dev, rtc_irq, mrst_rtc_irq,
       0, dev_name(&mrst_rtc.rtc->dev),
       mrst_rtc.rtc);
  if (retval < 0) {
   dev_dbg(dev, "IRQ %d is already in use, err %d\n",
    rtc_irq, retval);
   goto cleanup0;
  }
 }

 retval = rtc_register_device(mrst_rtc.rtc);
 if (retval)
  goto cleanup0;

 dev_dbg(dev, "initialised\n");
 return 0;

cleanup0:
 mrst_rtc.dev = ((void*)0);
 dev_err(dev, "rtc-mrst: unable to initialise\n");
 return retval;
}
