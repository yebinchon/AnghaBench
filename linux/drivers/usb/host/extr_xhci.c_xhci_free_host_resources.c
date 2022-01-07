
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xhci_input_control_ctx {int dummy; } ;
struct xhci_hcd {int num_active_eps; } ;


 int trace_xhci_dbg_quirks ;
 scalar_t__ xhci_count_num_new_endpoints (struct xhci_hcd*,struct xhci_input_control_ctx*) ;
 int xhci_dbg_trace (struct xhci_hcd*,int ,char*,scalar_t__,int ) ;

__attribute__((used)) static void xhci_free_host_resources(struct xhci_hcd *xhci,
  struct xhci_input_control_ctx *ctrl_ctx)
{
 u32 num_failed_eps;

 num_failed_eps = xhci_count_num_new_endpoints(xhci, ctrl_ctx);
 xhci->num_active_eps -= num_failed_eps;
 xhci_dbg_trace(xhci, trace_xhci_dbg_quirks,
   "Removing %u failed ep ctxs, %u now active.",
   num_failed_eps,
   xhci->num_active_eps);
}
