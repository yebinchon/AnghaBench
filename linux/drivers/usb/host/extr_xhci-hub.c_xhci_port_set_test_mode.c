
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef size_t u16 ;
struct xhci_port {scalar_t__ addr; } ;
struct TYPE_2__ {struct xhci_port** ports; } ;
struct xhci_hcd {size_t test_mode; TYPE_1__ usb2_rhub; } ;


 scalar_t__ PORTPMSC ;
 size_t PORT_TEST_MODE_SHIFT ;
 size_t TEST_FORCE_EN ;
 size_t readl (scalar_t__) ;
 int writel (size_t,scalar_t__) ;
 int xhci_start (struct xhci_hcd*) ;

__attribute__((used)) static void xhci_port_set_test_mode(struct xhci_hcd *xhci,
 u16 test_mode, u16 wIndex)
{
 u32 temp;
 struct xhci_port *port;


 port = xhci->usb2_rhub.ports[wIndex];
 temp = readl(port->addr + PORTPMSC);
 temp |= test_mode << PORT_TEST_MODE_SHIFT;
 writel(temp, port->addr + PORTPMSC);
 xhci->test_mode = test_mode;
 if (test_mode == TEST_FORCE_EN)
  xhci_start(xhci);
}
