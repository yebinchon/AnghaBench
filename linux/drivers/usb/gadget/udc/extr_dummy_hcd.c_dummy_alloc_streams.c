
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_2__ desc; int ss_ep_comp; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {int dummy; } ;
struct dummy_hcd {int stream_en_ep; TYPE_1__* dum; } ;
typedef int gfp_t ;
struct TYPE_4__ {int lock; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,int ,int) ;
 int dummy_dev (struct dummy_hcd*) ;
 unsigned int dummy_get_ep_idx (TYPE_2__*) ;
 struct dummy_hcd* hcd_to_dummy_hcd (struct usb_hcd*) ;
 int set_max_streams_for_pipe (struct dummy_hcd*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_endpoint_num (TYPE_2__*) ;
 int usb_ss_max_streams (int *) ;

__attribute__((used)) static int dummy_alloc_streams(struct usb_hcd *hcd, struct usb_device *udev,
 struct usb_host_endpoint **eps, unsigned int num_eps,
 unsigned int num_streams, gfp_t mem_flags)
{
 struct dummy_hcd *dum_hcd = hcd_to_dummy_hcd(hcd);
 unsigned long flags;
 int max_stream;
 int ret_streams = num_streams;
 unsigned int index;
 unsigned int i;

 if (!num_eps)
  return -EINVAL;

 spin_lock_irqsave(&dum_hcd->dum->lock, flags);
 for (i = 0; i < num_eps; i++) {
  index = dummy_get_ep_idx(&eps[i]->desc);
  if ((1 << index) & dum_hcd->stream_en_ep) {
   ret_streams = -EINVAL;
   goto out;
  }
  max_stream = usb_ss_max_streams(&eps[i]->ss_ep_comp);
  if (!max_stream) {
   ret_streams = -EINVAL;
   goto out;
  }
  if (max_stream < ret_streams) {
   dev_dbg(dummy_dev(dum_hcd), "Ep 0x%x only supports %u "
     "stream IDs.\n",
     eps[i]->desc.bEndpointAddress,
     max_stream);
   ret_streams = max_stream;
  }
 }

 for (i = 0; i < num_eps; i++) {
  index = dummy_get_ep_idx(&eps[i]->desc);
  dum_hcd->stream_en_ep |= 1 << index;
  set_max_streams_for_pipe(dum_hcd,
    usb_endpoint_num(&eps[i]->desc), ret_streams);
 }
out:
 spin_unlock_irqrestore(&dum_hcd->dum->lock, flags);
 return ret_streams;
}
