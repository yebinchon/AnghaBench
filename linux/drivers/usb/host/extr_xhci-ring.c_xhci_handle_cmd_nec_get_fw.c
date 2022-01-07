
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int quirks; } ;
struct xhci_event_cmd {int status; } ;


 int NEC_FW_MAJOR (int ) ;
 int NEC_FW_MINOR (int ) ;
 int XHCI_NEC_HOST ;
 int le32_to_cpu (int ) ;
 int trace_xhci_dbg_quirks ;
 int xhci_dbg_trace (struct xhci_hcd*,int ,char*,int ,int ) ;
 int xhci_warn (struct xhci_hcd*,char*) ;

__attribute__((used)) static void xhci_handle_cmd_nec_get_fw(struct xhci_hcd *xhci,
  struct xhci_event_cmd *event)
{
 if (!(xhci->quirks & XHCI_NEC_HOST)) {
  xhci_warn(xhci, "WARN NEC_GET_FW command on non-NEC host\n");
  return;
 }
 xhci_dbg_trace(xhci, trace_xhci_dbg_quirks,
   "NEC firmware version %2x.%02x",
   NEC_FW_MAJOR(le32_to_cpu(event->status)),
   NEC_FW_MINOR(le32_to_cpu(event->status)));
}
