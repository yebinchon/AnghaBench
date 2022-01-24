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
struct renesas_usb3 {int /*<<< orphan*/  workaround_for_vbus; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB3_USB_INT_STA_1 ; 
 int /*<<< orphan*/  USB_INT_1_VBUS_CNG ; 
 int /*<<< orphan*/  FUNC0 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct renesas_usb3 *usb3)
{
	FUNC1(usb3, ~0, USB3_USB_INT_STA_1);
	if (!usb3->workaround_for_vbus)
		FUNC0(usb3, USB_INT_1_VBUS_CNG);
}