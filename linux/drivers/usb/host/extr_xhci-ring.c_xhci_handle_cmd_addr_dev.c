
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_virt_device {int out_ctx; } ;
struct xhci_slot_ctx {int dummy; } ;
struct xhci_hcd {struct xhci_virt_device** devs; } ;


 int trace_xhci_handle_cmd_addr_dev (struct xhci_slot_ctx*) ;
 struct xhci_slot_ctx* xhci_get_slot_ctx (struct xhci_hcd*,int ) ;

__attribute__((used)) static void xhci_handle_cmd_addr_dev(struct xhci_hcd *xhci, int slot_id)
{
 struct xhci_virt_device *vdev;
 struct xhci_slot_ctx *slot_ctx;

 vdev = xhci->devs[slot_id];
 slot_ctx = xhci_get_slot_ctx(xhci, vdev->out_ctx);
 trace_xhci_handle_cmd_addr_dev(slot_ctx);
}
