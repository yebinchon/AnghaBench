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
typedef  int u32 ;
struct renesas_usb3 {int dummy; } ;

/* Variables and functions */
 int USB_INT_1_B2_RSUM ; 
 int USB_INT_1_B2_USBRST ; 
 int USB_INT_1_B3_DISABLE ; 
 int USB_INT_1_B3_HOTRST ; 
 int USB_INT_1_B3_LUPSUCS ; 
 int USB_INT_1_B3_PLLWKUP ; 
 int USB_INT_1_B3_WRMRST ; 
 int USB_INT_1_SPEED ; 
 int USB_INT_1_VBUS_CNG ; 
 int /*<<< orphan*/  FUNC0 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC1 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC4 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC6 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC7 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC8 (struct renesas_usb3*) ; 

__attribute__((used)) static void FUNC9(struct renesas_usb3 *usb3, u32 int_sta_1)
{
	if (int_sta_1 & USB_INT_1_B3_PLLWKUP)
		FUNC4(usb3);

	if (int_sta_1 & USB_INT_1_B3_LUPSUCS)
		FUNC3(usb3);

	if (int_sta_1 & USB_INT_1_B3_HOTRST)
		FUNC2(usb3);

	if (int_sta_1 & USB_INT_1_B3_WRMRST)
		FUNC8(usb3);

	if (int_sta_1 & USB_INT_1_B3_DISABLE)
		FUNC1(usb3);

	if (int_sta_1 & USB_INT_1_B2_USBRST)
		FUNC0(usb3);

	if (int_sta_1 & USB_INT_1_B2_RSUM)
		FUNC5(usb3);

	if (int_sta_1 & USB_INT_1_SPEED)
		FUNC6(usb3);

	if (int_sta_1 & USB_INT_1_VBUS_CNG)
		FUNC7(usb3);
}