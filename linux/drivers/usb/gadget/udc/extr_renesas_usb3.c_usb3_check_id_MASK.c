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
struct renesas_usb3 {scalar_t__ connection_state; int /*<<< orphan*/  extcon_work; int /*<<< orphan*/  forced_b_device; scalar_t__ extcon_host; int /*<<< orphan*/  role_sw_by_connector; } ;

/* Variables and functions */
 scalar_t__ USB_ROLE_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*,int,int) ; 

__attribute__((used)) static void FUNC3(struct renesas_usb3 *usb3)
{
	usb3->extcon_host = FUNC1(usb3);

	if ((!usb3->role_sw_by_connector && usb3->extcon_host &&
	     !usb3->forced_b_device) || usb3->connection_state == USB_ROLE_HOST)
		FUNC2(usb3, true, true);
	else
		FUNC2(usb3, false, false);

	FUNC0(&usb3->extcon_work);
}