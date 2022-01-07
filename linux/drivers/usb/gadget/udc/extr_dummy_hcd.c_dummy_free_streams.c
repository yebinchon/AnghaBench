
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_host_endpoint {int desc; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {int dummy; } ;
struct dummy_hcd {int stream_en_ep; TYPE_1__* dum; } ;
typedef int gfp_t ;
struct TYPE_2__ {int lock; } ;


 int EINVAL ;
 unsigned int dummy_get_ep_idx (int *) ;
 struct dummy_hcd* hcd_to_dummy_hcd (struct usb_hcd*) ;
 int set_max_streams_for_pipe (struct dummy_hcd*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_endpoint_num (int *) ;

__attribute__((used)) static int dummy_free_streams(struct usb_hcd *hcd, struct usb_device *udev,
 struct usb_host_endpoint **eps, unsigned int num_eps,
 gfp_t mem_flags)
{
 struct dummy_hcd *dum_hcd = hcd_to_dummy_hcd(hcd);
 unsigned long flags;
 int ret;
 unsigned int index;
 unsigned int i;

 spin_lock_irqsave(&dum_hcd->dum->lock, flags);
 for (i = 0; i < num_eps; i++) {
  index = dummy_get_ep_idx(&eps[i]->desc);
  if (!((1 << index) & dum_hcd->stream_en_ep)) {
   ret = -EINVAL;
   goto out;
  }
 }

 for (i = 0; i < num_eps; i++) {
  index = dummy_get_ep_idx(&eps[i]->desc);
  dum_hcd->stream_en_ep &= ~(1 << index);
  set_max_streams_for_pipe(dum_hcd,
    usb_endpoint_num(&eps[i]->desc), 0);
 }
 ret = 0;
out:
 spin_unlock_irqrestore(&dum_hcd->dum->lock, flags);
 return ret;
}
