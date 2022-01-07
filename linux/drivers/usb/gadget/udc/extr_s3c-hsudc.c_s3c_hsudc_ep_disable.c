
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ep {int dummy; } ;
struct TYPE_2__ {int * desc; } ;
struct s3c_hsudc_ep {int stopped; TYPE_1__ ep; int bEndpointAddress; struct s3c_hsudc* dev; } ;
struct s3c_hsudc {int lock; scalar_t__ regs; } ;


 int EINVAL ;
 int ESHUTDOWN ;
 scalar_t__ S3C_EIER ;
 int __clear_bit (int ,scalar_t__) ;
 int ep_index (struct s3c_hsudc_ep*) ;
 struct s3c_hsudc_ep* our_ep (struct usb_ep*) ;
 int s3c_hsudc_nuke_ep (struct s3c_hsudc_ep*,int ) ;
 int set_index (struct s3c_hsudc*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int s3c_hsudc_ep_disable(struct usb_ep *_ep)
{
 struct s3c_hsudc_ep *hsep = our_ep(_ep);
 struct s3c_hsudc *hsudc = hsep->dev;
 unsigned long flags;

 if (!_ep || !hsep->ep.desc)
  return -EINVAL;

 spin_lock_irqsave(&hsudc->lock, flags);

 set_index(hsudc, hsep->bEndpointAddress);
 __clear_bit(ep_index(hsep), hsudc->regs + S3C_EIER);

 s3c_hsudc_nuke_ep(hsep, -ESHUTDOWN);

 hsep->ep.desc = ((void*)0);
 hsep->stopped = 1;

 spin_unlock_irqrestore(&hsudc->lock, flags);
 return 0;
}
