#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
typedef  size_t u16 ;
struct xhci_port {scalar_t__ addr; } ;
struct TYPE_2__ {struct xhci_port** ports; } ;
struct xhci_hcd {size_t test_mode; TYPE_1__ usb2_rhub; } ;

/* Variables and functions */
 scalar_t__ PORTPMSC ; 
 size_t PORT_TEST_MODE_SHIFT ; 
 size_t TEST_FORCE_EN ; 
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*) ; 

__attribute__((used)) static void FUNC3(struct xhci_hcd *xhci,
	u16 test_mode, u16 wIndex)
{
	u32 temp;
	struct xhci_port *port;

	/* xhci only supports test mode for usb2 ports */
	port = xhci->usb2_rhub.ports[wIndex];
	temp = FUNC0(port->addr + PORTPMSC);
	temp |= test_mode << PORT_TEST_MODE_SHIFT;
	FUNC1(temp, port->addr + PORTPMSC);
	xhci->test_mode = test_mode;
	if (test_mode == TEST_FORCE_EN)
		FUNC2(xhci);
}