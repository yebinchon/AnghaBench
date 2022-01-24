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
struct renesas_usb3 {int extcon_usb; int /*<<< orphan*/  extcon_work; scalar_t__ workaround_for_vbus; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB3_USB_STA ; 
 int USB_STA_VBUS_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*) ; 
 int FUNC3 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct renesas_usb3 *usb3)
{
	if (usb3->workaround_for_vbus) {
		FUNC1(usb3);
	} else {
		usb3->extcon_usb = !!(FUNC3(usb3, USB3_USB_STA) &
							USB_STA_VBUS_STA);
		if (usb3->extcon_usb)
			FUNC1(usb3);
		else
			FUNC2(usb3);

		FUNC0(&usb3->extcon_work);
	}
}