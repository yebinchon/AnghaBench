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
struct renesas_usb3 {int /*<<< orphan*/  gadget; TYPE_1__* driver; scalar_t__ disabled_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disconnect ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  USB30_CON_B3_CONNECT ; 
 int /*<<< orphan*/  USB3_USB30_CON ; 
 int /*<<< orphan*/  USB3_USB_COM_CON ; 
 int /*<<< orphan*/  USB_COM_CON_SPD_MODE ; 
 int USB_INT_1_B2_L1SPND ; 
 int USB_INT_1_B2_RSUM ; 
 int USB_INT_1_B2_SPND ; 
 int USB_INT_1_B2_USBRST ; 
 int USB_INT_1_B3_DISABLE ; 
 int USB_INT_1_B3_HOTRST ; 
 int USB_INT_1_B3_LUPSUCS ; 
 int USB_INT_1_B3_PLLWKUP ; 
 int USB_INT_1_B3_WRMRST ; 
 int USB_INT_1_SPEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC4 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct renesas_usb3 *usb3)
{
	usb3->disabled_count = 0;
	FUNC5(usb3, 0);
	FUNC1(usb3, USB30_CON_B3_CONNECT, USB3_USB30_CON);
	FUNC4(usb3);
	FUNC2(usb3, USB_INT_1_B2_RSUM | USB_INT_1_B3_PLLWKUP |
			   USB_INT_1_B3_LUPSUCS | USB_INT_1_B3_DISABLE |
			   USB_INT_1_SPEED | USB_INT_1_B3_WRMRST |
			   USB_INT_1_B3_HOTRST | USB_INT_1_B2_SPND |
			   USB_INT_1_B2_L1SPND | USB_INT_1_B2_USBRST);
	FUNC1(usb3, USB_COM_CON_SPD_MODE, USB3_USB_COM_CON);
	FUNC3(usb3);

	if (usb3->driver)
		usb3->driver->disconnect(&usb3->gadget);
}