
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int controller; } ;
struct usb_hcd {unsigned long rsrc_start; unsigned long rsrc_len; int irq; TYPE_1__ self; int state; void* regs; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct oxu_hcd {int is_otg; } ;


 int ENOMEM ;
 struct usb_hcd* ERR_PTR (int) ;
 int HC_STATE_HALT ;
 int IRQF_SHARED ;
 int OXU_CM_HOST_ONLY ;
 int OXU_ES_LITTLE ;
 int OXU_OTG_CORE_OFFSET ;
 int OXU_SPH_CORE_OFFSET ;
 int OXU_USBMODE ;
 int OXU_VBPS ;
 int device_wakeup_enable (int ) ;
 struct oxu_hcd* hcd_to_oxu (struct usb_hcd*) ;
 int oxu_hc_driver ;
 int oxu_writel (void*,int ,int) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 struct usb_hcd* usb_create_hcd (int *,struct device*,char*) ;

__attribute__((used)) static struct usb_hcd *oxu_create(struct platform_device *pdev,
    unsigned long memstart, unsigned long memlen,
    void *base, int irq, int otg)
{
 struct device *dev = &pdev->dev;

 struct usb_hcd *hcd;
 struct oxu_hcd *oxu;
 int ret;


 oxu_writel(base + (otg ? OXU_OTG_CORE_OFFSET : OXU_SPH_CORE_OFFSET),
    OXU_USBMODE,
    OXU_CM_HOST_ONLY | OXU_ES_LITTLE | OXU_VBPS);

 hcd = usb_create_hcd(&oxu_hc_driver, dev,
    otg ? "oxu210hp_otg" : "oxu210hp_sph");
 if (!hcd)
  return ERR_PTR(-ENOMEM);

 hcd->rsrc_start = memstart;
 hcd->rsrc_len = memlen;
 hcd->regs = base;
 hcd->irq = irq;
 hcd->state = HC_STATE_HALT;

 oxu = hcd_to_oxu(hcd);
 oxu->is_otg = otg;

 ret = usb_add_hcd(hcd, irq, IRQF_SHARED);
 if (ret < 0)
  return ERR_PTR(ret);

 device_wakeup_enable(hcd->self.controller);
 return hcd;
}
