
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_hcd {int dummy; } ;


 int USBPORTSC_CSC ;
 int udelay (int) ;
 int uhci_readw (struct uhci_hcd*,unsigned long) ;

__attribute__((used)) static void wait_for_HP(struct uhci_hcd *uhci, unsigned long port_addr)
{
 int i;

 for (i = 10; i < 250; i += 10) {
  if (uhci_readw(uhci, port_addr) & USBPORTSC_CSC)
   return;
  udelay(10);
 }

}
