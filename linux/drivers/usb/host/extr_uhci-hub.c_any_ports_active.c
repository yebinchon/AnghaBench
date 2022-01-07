
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int rh_numports; int port_c_suspend; } ;


 int RWC_BITS ;
 scalar_t__ USBPORTSC1 ;
 int USBPORTSC_CCS ;
 scalar_t__ test_bit (int,int *) ;
 int uhci_readw (struct uhci_hcd*,scalar_t__) ;

__attribute__((used)) static int any_ports_active(struct uhci_hcd *uhci)
{
 int port;

 for (port = 0; port < uhci->rh_numports; ++port) {
  if ((uhci_readw(uhci, USBPORTSC1 + port * 2) &
    (USBPORTSC_CCS | RWC_BITS)) ||
    test_bit(port, &uhci->port_c_suspend))
   return 1;
 }
 return 0;
}
