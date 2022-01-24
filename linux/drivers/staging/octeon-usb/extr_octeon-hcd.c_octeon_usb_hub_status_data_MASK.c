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
struct usb_hcd {int dummy; } ;
struct octeon_hcd {int /*<<< orphan*/  lock; } ;
struct cvmx_usb_port_status {int connect_change; } ;

/* Variables and functions */
 struct cvmx_usb_port_status FUNC0 (struct octeon_hcd*) ; 
 struct octeon_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct usb_hcd *hcd, char *buf)
{
	struct octeon_hcd *usb = FUNC1(hcd);
	struct cvmx_usb_port_status port_status;
	unsigned long flags;

	FUNC2(&usb->lock, flags);
	port_status = FUNC0(usb);
	FUNC3(&usb->lock, flags);
	buf[0] = port_status.connect_change << 1;

	return buf[0] != 0;
}