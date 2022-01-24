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
struct renesas_usb3 {int dummy; } ;

/* Variables and functions */
 int USB20_CON_B2_SUSPEND ; 
 int /*<<< orphan*/  USB3_USB20_CON ; 
 int /*<<< orphan*/  USB_INT_1_B2_RSUM ; 
 int /*<<< orphan*/  FUNC0 (struct renesas_usb3*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct renesas_usb3 *usb3)
{
	if (!(FUNC2(usb3, USB3_USB20_CON) & USB20_CON_B2_SUSPEND))
		return true;	/* already waked it up */

	FUNC0(usb3, USB20_CON_B2_SUSPEND, USB3_USB20_CON);
	FUNC1(usb3, USB_INT_1_B2_RSUM);

	return false;
}