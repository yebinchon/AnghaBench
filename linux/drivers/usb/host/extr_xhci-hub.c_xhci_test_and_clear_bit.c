
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_port {int addr; } ;
struct xhci_hcd {int dummy; } ;


 int readl (int ) ;
 int writel (int,int ) ;
 int xhci_port_state_to_neutral (int) ;

void xhci_test_and_clear_bit(struct xhci_hcd *xhci, struct xhci_port *port,
        u32 port_bit)
{
 u32 temp;

 temp = readl(port->addr);
 if (temp & port_bit) {
  temp = xhci_port_state_to_neutral(temp);
  temp |= port_bit;
  writel(temp, port->addr);
 }
}
