
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct td_node {int dma; } ;
struct TYPE_6__ {TYPE_2__* ptr; } ;
struct ci_hw_ep {scalar_t__ type; int dir; int num; TYPE_3__ qh; } ;
struct ci_hdrc {int dummy; } ;
struct TYPE_4__ {int token; int next; } ;
struct TYPE_5__ {TYPE_1__ td; } ;


 int TD_STATUS_ACTIVE ;
 int TD_STATUS_HALTED ;
 scalar_t__ USB_ENDPOINT_XFER_CONTROL ;
 int cpu_to_le32 (int) ;
 int hw_ep_prime (struct ci_hdrc*,int ,int ,int) ;

__attribute__((used)) static int reprime_dtd(struct ci_hdrc *ci, struct ci_hw_ep *hwep,
        struct td_node *node)
{
 hwep->qh.ptr->td.next = cpu_to_le32(node->dma);
 hwep->qh.ptr->td.token &=
  cpu_to_le32(~(TD_STATUS_HALTED | TD_STATUS_ACTIVE));

 return hw_ep_prime(ci, hwep->num, hwep->dir,
    hwep->type == USB_ENDPOINT_XFER_CONTROL);
}
