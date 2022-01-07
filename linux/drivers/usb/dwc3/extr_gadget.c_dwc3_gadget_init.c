
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sg_supported; char* name; int lpm_capable; int max_speed; int speed; int * ops; } ;
struct dwc3 {int irq_gadget; scalar_t__ revision; int ep0_trb_addr; void* ep0_trb; int sysdev; int setup_buf; int bounce_addr; void* bounce; int maximum_speed; TYPE_1__ gadget; int dev; int num_eps; int dis_metastability_quirk; int ep0_in_setup; } ;


 int DWC3_BOUNCE_SIZE ;
 int DWC3_EP0_SETUP_SIZE ;
 scalar_t__ DWC3_REVISION_220A ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_SPEED_UNKNOWN ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,scalar_t__) ;
 void* dma_alloc_coherent (int ,int,int *,int ) ;
 int dma_free_coherent (int ,int,void*,int ) ;
 int dwc3_gadget_free_endpoints (struct dwc3*) ;
 int dwc3_gadget_get_irq (struct dwc3*) ;
 int dwc3_gadget_init_endpoints (struct dwc3*,int ) ;
 int dwc3_gadget_ops ;
 int dwc3_gadget_set_speed (TYPE_1__*,int ) ;
 int init_completion (int *) ;
 int kfree (int ) ;
 int kzalloc (int ,int ) ;
 int usb_add_gadget_udc (int ,TYPE_1__*) ;

int dwc3_gadget_init(struct dwc3 *dwc)
{
 int ret;
 int irq;

 irq = dwc3_gadget_get_irq(dwc);
 if (irq < 0) {
  ret = irq;
  goto err0;
 }

 dwc->irq_gadget = irq;

 dwc->ep0_trb = dma_alloc_coherent(dwc->sysdev,
       sizeof(*dwc->ep0_trb) * 2,
       &dwc->ep0_trb_addr, GFP_KERNEL);
 if (!dwc->ep0_trb) {
  dev_err(dwc->dev, "failed to allocate ep0 trb\n");
  ret = -ENOMEM;
  goto err0;
 }

 dwc->setup_buf = kzalloc(DWC3_EP0_SETUP_SIZE, GFP_KERNEL);
 if (!dwc->setup_buf) {
  ret = -ENOMEM;
  goto err1;
 }

 dwc->bounce = dma_alloc_coherent(dwc->sysdev, DWC3_BOUNCE_SIZE,
   &dwc->bounce_addr, GFP_KERNEL);
 if (!dwc->bounce) {
  ret = -ENOMEM;
  goto err2;
 }

 init_completion(&dwc->ep0_in_setup);

 dwc->gadget.ops = &dwc3_gadget_ops;
 dwc->gadget.speed = USB_SPEED_UNKNOWN;
 dwc->gadget.sg_supported = 1;
 dwc->gadget.name = "dwc3-gadget";
 dwc->gadget.lpm_capable = 1;
 if (dwc->revision < DWC3_REVISION_220A &&
     !dwc->dis_metastability_quirk)
  dev_info(dwc->dev, "changing max_speed on rev %08x\n",
    dwc->revision);

 dwc->gadget.max_speed = dwc->maximum_speed;






 ret = dwc3_gadget_init_endpoints(dwc, dwc->num_eps);
 if (ret)
  goto err3;

 ret = usb_add_gadget_udc(dwc->dev, &dwc->gadget);
 if (ret) {
  dev_err(dwc->dev, "failed to register udc\n");
  goto err4;
 }

 dwc3_gadget_set_speed(&dwc->gadget, dwc->maximum_speed);

 return 0;

err4:
 dwc3_gadget_free_endpoints(dwc);

err3:
 dma_free_coherent(dwc->sysdev, DWC3_BOUNCE_SIZE, dwc->bounce,
   dwc->bounce_addr);

err2:
 kfree(dwc->setup_buf);

err1:
 dma_free_coherent(dwc->sysdev, sizeof(*dwc->ep0_trb) * 2,
   dwc->ep0_trb, dwc->ep0_trb_addr);

err0:
 return ret;
}
