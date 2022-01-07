
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_ep {int * name; } ;
struct TYPE_2__ {int * desc; int * name; } ;
struct s3c2410_ep {int halted; int num; int dev; TYPE_1__ ep; } ;


 int DEBUG_NORMAL ;
 int EINVAL ;
 int ESHUTDOWN ;
 int S3C2410_UDC_EP_INT_EN_REG ;
 int dprintk (int ,char*,int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int s3c2410_udc_nuke (int ,struct s3c2410_ep*,int ) ;
 struct s3c2410_ep* to_s3c2410_ep (struct usb_ep*) ;
 int udc_read (int ) ;
 int udc_write (int,int ) ;

__attribute__((used)) static int s3c2410_udc_ep_disable(struct usb_ep *_ep)
{
 struct s3c2410_ep *ep = to_s3c2410_ep(_ep);
 unsigned long flags;
 u32 int_en_reg;

 if (!_ep || !ep->ep.desc) {
  dprintk(DEBUG_NORMAL, "%s not enabled\n",
   _ep ? ep->ep.name : ((void*)0));
  return -EINVAL;
 }

 local_irq_save(flags);

 dprintk(DEBUG_NORMAL, "ep_disable: %s\n", _ep->name);

 ep->ep.desc = ((void*)0);
 ep->halted = 1;

 s3c2410_udc_nuke(ep->dev, ep, -ESHUTDOWN);


 int_en_reg = udc_read(S3C2410_UDC_EP_INT_EN_REG);
 udc_write(int_en_reg & ~(1<<ep->num), S3C2410_UDC_EP_INT_EN_REG);

 local_irq_restore(flags);

 dprintk(DEBUG_NORMAL, "%s disabled\n", _ep->name);

 return 0;
}
