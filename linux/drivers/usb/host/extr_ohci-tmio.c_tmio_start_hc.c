
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct usb_hcd {unsigned long rsrc_start; int irq; } ;
struct tmio_hcd {scalar_t__ ccr; } ;
struct platform_device {int dev; } ;


 scalar_t__ CCR_BASE ;
 scalar_t__ CCR_ILME ;
 scalar_t__ CCR_INTC ;
 scalar_t__ CCR_REVID ;
 int dev_info (int *,char*,int ,int ,int ) ;
 struct tmio_hcd* hcd_to_tmio (struct usb_hcd*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int tmio_ioread8 (scalar_t__) ;
 int tmio_iowrite16 (unsigned long,scalar_t__) ;
 int tmio_iowrite8 (int,scalar_t__) ;
 int tmio_write_pm (struct platform_device*) ;

__attribute__((used)) static void tmio_start_hc(struct platform_device *dev)
{
 struct usb_hcd *hcd = platform_get_drvdata(dev);
 struct tmio_hcd *tmio = hcd_to_tmio(hcd);
 unsigned long base = hcd->rsrc_start;

 tmio_write_pm(dev);
 tmio_iowrite16(base, tmio->ccr + CCR_BASE);
 tmio_iowrite16(base >> 16, tmio->ccr + CCR_BASE + 2);
 tmio_iowrite8(1, tmio->ccr + CCR_ILME);
 tmio_iowrite8(2, tmio->ccr + CCR_INTC);

 dev_info(&dev->dev, "revision %d @ 0x%08llx, irq %d\n",
   tmio_ioread8(tmio->ccr + CCR_REVID),
   (u64) hcd->rsrc_start, hcd->irq);
}
