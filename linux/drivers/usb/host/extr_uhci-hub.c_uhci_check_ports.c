
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uhci_hcd {unsigned int rh_numports; scalar_t__ ports_timeout; int resuming_ports; scalar_t__ wait_for_hp; } ;
struct TYPE_2__ {int rh_timer; int self; } ;


 int CLR_RH_PORTSTAT (int) ;
 int SET_RH_PORTSTAT (int ) ;
 int USBPORTSC1 ;
 int USBPORTSC_CSC ;
 int USBPORTSC_PE ;
 int USBPORTSC_PEC ;
 int USBPORTSC_PR ;
 int USBPORTSC_RD ;
 int USB_RESUME_TIMEOUT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int set_bit (unsigned int,int *) ;
 int test_bit (unsigned int,int *) ;
 scalar_t__ time_after_eq (scalar_t__,scalar_t__) ;
 int udelay (int) ;
 int uhci_finish_suspend (struct uhci_hcd*,unsigned int,unsigned long) ;
 int uhci_readw (struct uhci_hcd*,unsigned long) ;
 TYPE_1__* uhci_to_hcd (struct uhci_hcd*) ;
 scalar_t__ unlikely (int) ;
 int usb_hcd_start_port_resume (int *,unsigned int) ;
 int wait_for_HP (struct uhci_hcd*,unsigned long) ;

__attribute__((used)) static void uhci_check_ports(struct uhci_hcd *uhci)
{
 unsigned int port;
 unsigned long port_addr;
 int status;

 for (port = 0; port < uhci->rh_numports; ++port) {
  port_addr = USBPORTSC1 + 2 * port;
  status = uhci_readw(uhci, port_addr);
  if (unlikely(status & USBPORTSC_PR)) {
   if (time_after_eq(jiffies, uhci->ports_timeout)) {
    CLR_RH_PORTSTAT(USBPORTSC_PR);
    udelay(10);



    if (uhci->wait_for_hp)
     wait_for_HP(uhci, port_addr);





    CLR_RH_PORTSTAT(USBPORTSC_CSC | USBPORTSC_PEC);
    SET_RH_PORTSTAT(USBPORTSC_PE);
   }
  }
  if (unlikely(status & USBPORTSC_RD)) {
   if (!test_bit(port, &uhci->resuming_ports)) {


    set_bit(port, &uhci->resuming_ports);
    uhci->ports_timeout = jiffies +
     msecs_to_jiffies(USB_RESUME_TIMEOUT);
    usb_hcd_start_port_resume(
      &uhci_to_hcd(uhci)->self, port);



    mod_timer(&uhci_to_hcd(uhci)->rh_timer,
      uhci->ports_timeout);
   } else if (time_after_eq(jiffies,
      uhci->ports_timeout)) {
    uhci_finish_suspend(uhci, port, port_addr);
   }
  }
 }
}
