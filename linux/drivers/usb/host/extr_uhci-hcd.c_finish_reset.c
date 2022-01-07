
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uhci_hcd {int rh_numports; int is_stopped; int rh_state; scalar_t__ resuming_ports; scalar_t__ port_c_suspend; } ;
struct TYPE_2__ {int flags; } ;


 int HCD_FLAG_POLL_RH ;
 int UHCI_IS_STOPPED ;
 int UHCI_RH_RESET ;
 scalar_t__ USBPORTSC1 ;
 int clear_bit (int ,int *) ;
 TYPE_1__* uhci_to_hcd (struct uhci_hcd*) ;
 int uhci_writew (struct uhci_hcd*,int ,scalar_t__) ;

__attribute__((used)) static void finish_reset(struct uhci_hcd *uhci)
{
 int port;





 for (port = 0; port < uhci->rh_numports; ++port)
  uhci_writew(uhci, 0, USBPORTSC1 + (port * 2));

 uhci->port_c_suspend = uhci->resuming_ports = 0;
 uhci->rh_state = UHCI_RH_RESET;
 uhci->is_stopped = UHCI_IS_STOPPED;
 clear_bit(HCD_FLAG_POLL_RH, &uhci_to_hcd(uhci)->flags);
}
