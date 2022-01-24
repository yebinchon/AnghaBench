#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct xhci_port {int /*<<< orphan*/  addr; } ;
struct xhci_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_WKCONN_E ; 
 int /*<<< orphan*/  PORT_WKDISC_E ; 
 int /*<<< orphan*/  PORT_WKOC_E ; 
 int USB_PORT_FEAT_REMOTE_WAKE_CONNECT ; 
 int USB_PORT_FEAT_REMOTE_WAKE_DISCONNECT ; 
 int USB_PORT_FEAT_REMOTE_WAKE_OVER_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct xhci_hcd *xhci,
				      struct xhci_port *port, u16 wake_mask)
{
	u32 temp;

	temp = FUNC0(port->addr);
	temp = FUNC2(temp);

	if (wake_mask & USB_PORT_FEAT_REMOTE_WAKE_CONNECT)
		temp |= PORT_WKCONN_E;
	else
		temp &= ~PORT_WKCONN_E;

	if (wake_mask & USB_PORT_FEAT_REMOTE_WAKE_DISCONNECT)
		temp |= PORT_WKDISC_E;
	else
		temp &= ~PORT_WKDISC_E;

	if (wake_mask & USB_PORT_FEAT_REMOTE_WAKE_OVER_CURRENT)
		temp |= PORT_WKOC_E;
	else
		temp &= ~PORT_WKOC_E;

	FUNC1(temp, port->addr);
}