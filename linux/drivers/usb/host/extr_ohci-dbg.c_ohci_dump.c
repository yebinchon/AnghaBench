
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_hcd {scalar_t__ hcca; } ;


 int ohci_dbg (struct ohci_hcd*,char*,...) ;
 int ohci_dump_roothub (struct ohci_hcd*,int,int *,int *) ;
 int ohci_dump_status (struct ohci_hcd*,int *,int *) ;
 int ohci_frame_no (struct ohci_hcd*) ;

__attribute__((used)) static void ohci_dump(struct ohci_hcd *controller)
{
 ohci_dbg (controller, "OHCI controller state\n");


 ohci_dump_status (controller, ((void*)0), ((void*)0));
 if (controller->hcca)
  ohci_dbg (controller,
   "hcca frame #%04x\n", ohci_frame_no(controller));
 ohci_dump_roothub (controller, 1, ((void*)0), ((void*)0));
}
