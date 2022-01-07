
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * field; } ;
union xhci_trb {int event_cmd; TYPE_1__ generic; } ;
typedef scalar_t__ u32 ;
struct xhci_hcd {int quirks; } ;


 scalar_t__ TRB_FIELD_TO_TYPE (int ) ;
 scalar_t__ TRB_NEC_CMD_COMP ;
 int XHCI_NEC_HOST ;
 int handle_cmd_completion (struct xhci_hcd*,int *) ;
 int le32_to_cpu (int ) ;
 int xhci_dbg (struct xhci_hcd*,char*,scalar_t__) ;

__attribute__((used)) static void handle_vendor_event(struct xhci_hcd *xhci,
  union xhci_trb *event)
{
 u32 trb_type;

 trb_type = TRB_FIELD_TO_TYPE(le32_to_cpu(event->generic.field[3]));
 xhci_dbg(xhci, "Vendor specific event TRB type = %u\n", trb_type);
 if (trb_type == TRB_NEC_CMD_COMP && (xhci->quirks & XHCI_NEC_HOST))
  handle_cmd_completion(xhci, &event->event_cmd);
}
