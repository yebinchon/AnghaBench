
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_hcd {int dummy; } ;
struct xhci_command {int dummy; } ;


 int EP_ID_FOR_TRB (unsigned int) ;
 int SLOT_ID_FOR_TRB (int) ;
 int SUSPEND_PORT_FOR_TRB (int) ;
 int TRB_STOP_RING ;
 int TRB_TYPE (int ) ;
 int queue_command (struct xhci_hcd*,struct xhci_command*,int ,int ,int ,int,int) ;

int xhci_queue_stop_endpoint(struct xhci_hcd *xhci, struct xhci_command *cmd,
        int slot_id, unsigned int ep_index, int suspend)
{
 u32 trb_slot_id = SLOT_ID_FOR_TRB(slot_id);
 u32 trb_ep_index = EP_ID_FOR_TRB(ep_index);
 u32 type = TRB_TYPE(TRB_STOP_RING);
 u32 trb_suspend = SUSPEND_PORT_FOR_TRB(suspend);

 return queue_command(xhci, cmd, 0, 0, 0,
   trb_slot_id | trb_ep_index | type | trb_suspend, 0);
}
