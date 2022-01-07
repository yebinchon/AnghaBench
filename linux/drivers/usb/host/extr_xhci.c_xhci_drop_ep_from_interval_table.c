
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xhci_virt_ep {int bw_endpoint_list; } ;
struct xhci_tt_bw_info {int active_eps; } ;
struct xhci_interval_bw_table {struct xhci_interval_bw* interval_bw; int interval0_esit_payload; } ;
struct xhci_interval_bw {int* overhead; int num_packets; } ;
struct xhci_hcd {TYPE_2__** devs; } ;
struct xhci_bw_info {int ep_interval; scalar_t__ num_packets; scalar_t__ max_esit_payload; int type; } ;
struct usb_device {int speed; size_t slot_id; } ;
struct TYPE_4__ {TYPE_1__* bw_table; } ;
struct TYPE_3__ {int ss_bw_out; int ss_bw_in; } ;


 size_t FS_OVERHEAD_TYPE ;
 size_t HS_OVERHEAD_TYPE ;
 size_t LS_OVERHEAD_TYPE ;







 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ xhci_get_ss_bw_consumed (struct xhci_bw_info*) ;
 scalar_t__ xhci_is_async_ep (int ) ;
 scalar_t__ xhci_is_sync_in_ep (int ) ;

__attribute__((used)) static void xhci_drop_ep_from_interval_table(struct xhci_hcd *xhci,
  struct xhci_bw_info *ep_bw,
  struct xhci_interval_bw_table *bw_table,
  struct usb_device *udev,
  struct xhci_virt_ep *virt_ep,
  struct xhci_tt_bw_info *tt_info)
{
 struct xhci_interval_bw *interval_bw;
 int normalized_interval;

 if (xhci_is_async_ep(ep_bw->type))
  return;

 if (udev->speed >= 131) {
  if (xhci_is_sync_in_ep(ep_bw->type))
   xhci->devs[udev->slot_id]->bw_table->ss_bw_in -=
    xhci_get_ss_bw_consumed(ep_bw);
  else
   xhci->devs[udev->slot_id]->bw_table->ss_bw_out -=
    xhci_get_ss_bw_consumed(ep_bw);
  return;
 }




 if (list_empty(&virt_ep->bw_endpoint_list))
  return;



 if (udev->speed == 133)
  normalized_interval = ep_bw->ep_interval;
 else
  normalized_interval = ep_bw->ep_interval - 3;

 if (normalized_interval == 0)
  bw_table->interval0_esit_payload -= ep_bw->max_esit_payload;
 interval_bw = &bw_table->interval_bw[normalized_interval];
 interval_bw->num_packets -= ep_bw->num_packets;
 switch (udev->speed) {
 case 132:
  interval_bw->overhead[LS_OVERHEAD_TYPE] -= 1;
  break;
 case 134:
  interval_bw->overhead[FS_OVERHEAD_TYPE] -= 1;
  break;
 case 133:
  interval_bw->overhead[HS_OVERHEAD_TYPE] -= 1;
  break;
 case 131:
 case 130:
 case 129:
 case 128:



  return;
 }
 if (tt_info)
  tt_info->active_eps -= 1;
 list_del_init(&virt_ep->bw_endpoint_list);
}
