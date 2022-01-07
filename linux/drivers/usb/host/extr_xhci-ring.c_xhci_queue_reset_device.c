
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_hcd {int dummy; } ;
struct xhci_command {int dummy; } ;


 int SLOT_ID_FOR_TRB (int ) ;
 int TRB_RESET_DEV ;
 int TRB_TYPE (int ) ;
 int queue_command (struct xhci_hcd*,struct xhci_command*,int ,int ,int ,int,int) ;

int xhci_queue_reset_device(struct xhci_hcd *xhci, struct xhci_command *cmd,
  u32 slot_id)
{
 return queue_command(xhci, cmd, 0, 0, 0,
   TRB_TYPE(TRB_RESET_DEV) | SLOT_ID_FOR_TRB(slot_id),
   0);
}
