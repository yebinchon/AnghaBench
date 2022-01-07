
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int dead; int frame_number; int (* reset_hc ) (struct uhci_hcd*) ;} ;


 int finish_reset (struct uhci_hcd*) ;
 int stub1 (struct uhci_hcd*) ;
 int uhci_get_current_frame_number (struct uhci_hcd*) ;

__attribute__((used)) static void uhci_hc_died(struct uhci_hcd *uhci)
{
 uhci_get_current_frame_number(uhci);
 uhci->reset_hc(uhci);
 finish_reset(uhci);
 uhci->dead = 1;


 ++uhci->frame_number;
}
