
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehci_hcd {TYPE_1__* regs; int lock; int hcs_params; } ;
struct TYPE_2__ {int * port_status; } ;


 int HCS_N_PORTS (int ) ;
 int PORT_RWC_BITS ;
 int ehci_port_power (struct ehci_hcd*,int,int) ;
 int ehci_writel (struct ehci_hcd*,int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ehci_turn_off_all_ports(struct ehci_hcd *ehci)
{
 int port = HCS_N_PORTS(ehci->hcs_params);

 while (port--) {
  spin_unlock_irq(&ehci->lock);
  ehci_port_power(ehci, port, 0);
  spin_lock_irq(&ehci->lock);
  ehci_writel(ehci, PORT_RWC_BITS,
    &ehci->regs->port_status[port]);
 }
}
