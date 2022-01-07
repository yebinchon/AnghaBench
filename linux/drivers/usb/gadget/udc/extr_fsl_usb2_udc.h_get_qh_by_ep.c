
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_ep {TYPE_1__* udc; struct ep_queue_head* qh; } ;
struct ep_queue_head {int dummy; } ;
struct TYPE_2__ {scalar_t__ ep0_dir; struct ep_queue_head* ep_qh; } ;


 scalar_t__ USB_DIR_IN ;
 scalar_t__ ep_index (struct fsl_ep*) ;

__attribute__((used)) static inline struct ep_queue_head *get_qh_by_ep(struct fsl_ep *ep)
{

 if (ep_index(ep) != 0)
  return ep->qh;
 else
  return &ep->udc->ep_qh[(ep->udc->ep0_dir ==
    USB_DIR_IN) ? 1 : 0];
}
