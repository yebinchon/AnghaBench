
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_hcd {int dummy; } ;
struct xhci_command {int dummy; } ;


 int queue_command (struct xhci_hcd*,struct xhci_command*,int ,int ,int ,int ,int) ;

int xhci_queue_vendor_command(struct xhci_hcd *xhci, struct xhci_command *cmd,
  u32 field1, u32 field2, u32 field3, u32 field4)
{
 return queue_command(xhci, cmd, field1, field2, field3, field4, 0);
}
