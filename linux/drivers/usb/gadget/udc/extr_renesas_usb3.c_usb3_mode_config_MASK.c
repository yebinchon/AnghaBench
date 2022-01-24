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
struct renesas_usb3 {scalar_t__ connection_state; int /*<<< orphan*/  lock; scalar_t__ start_to_connect; int /*<<< orphan*/  role_sw_by_connector; } ;

/* Variables and functions */
 scalar_t__ USB_ROLE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct renesas_usb3*,int) ; 

__attribute__((used)) static void FUNC5(struct renesas_usb3 *usb3, bool host, bool a_dev)
{
	unsigned long flags;

	FUNC0(&usb3->lock, flags);
	if (!usb3->role_sw_by_connector ||
	    usb3->connection_state != USB_ROLE_NONE) {
		FUNC3(usb3, host);
		FUNC4(usb3, a_dev);
	}
	/* for A-Peripheral or forced B-device mode */
	if ((!host && a_dev) || usb3->start_to_connect)
		FUNC2(usb3);
	FUNC1(&usb3->lock, flags);
}