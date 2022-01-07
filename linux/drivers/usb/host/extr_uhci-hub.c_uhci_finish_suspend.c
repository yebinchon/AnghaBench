
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uhci_hcd {int resuming_ports; int port_c_suspend; } ;
struct TYPE_2__ {int self; } ;


 int CLR_RH_PORTSTAT (int) ;
 int SUSPEND_BITS ;
 int clear_bit (int,int *) ;
 int set_bit (int,int *) ;
 scalar_t__ test_bit (int,int *) ;
 int udelay (int) ;
 int uhci_readw (struct uhci_hcd*,unsigned long) ;
 TYPE_1__* uhci_to_hcd (struct uhci_hcd*) ;
 int usb_hcd_end_port_resume (int *,int) ;

__attribute__((used)) static void uhci_finish_suspend(struct uhci_hcd *uhci, int port,
  unsigned long port_addr)
{
 int status;
 int i;

 if (uhci_readw(uhci, port_addr) & SUSPEND_BITS) {
  CLR_RH_PORTSTAT(SUSPEND_BITS);
  if (test_bit(port, &uhci->resuming_ports))
   set_bit(port, &uhci->port_c_suspend);






  for (i = 0; i < 10; ++i) {
   if (!(uhci_readw(uhci, port_addr) & SUSPEND_BITS))
    break;
   udelay(1);
  }
 }
 clear_bit(port, &uhci->resuming_ports);
 usb_hcd_end_port_resume(&uhci_to_hcd(uhci)->self, port);
}
