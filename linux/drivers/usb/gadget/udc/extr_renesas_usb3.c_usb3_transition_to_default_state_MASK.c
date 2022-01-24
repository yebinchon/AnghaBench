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
 int /*<<< orphan*/  P0_INT_ALL_BITS ; 
 int /*<<< orphan*/  USB3_P0_INT_ENA ; 
 int /*<<< orphan*/  USB3_P0_INT_STA ; 
 int /*<<< orphan*/  USB3_USB_INT_ENA_2 ; 
 int USB_INT_1_B2_L1SPND ; 
 int USB_INT_1_B2_SPND ; 
 int USB_INT_1_B2_USBRST ; 
 int USB_INT_1_B3_HOTRST ; 
 int USB_INT_1_B3_WRMRST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct renesas_usb3*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct renesas_usb3 *usb3,
					     bool is_usb3)
{
	FUNC2(usb3, FUNC0(0), USB3_USB_INT_ENA_2);
	FUNC3(usb3, P0_INT_ALL_BITS, USB3_P0_INT_STA);
	FUNC2(usb3, P0_INT_ALL_BITS, USB3_P0_INT_ENA);

	if (is_usb3)
		FUNC1(usb3, USB_INT_1_B3_WRMRST |
				  USB_INT_1_B3_HOTRST);
	else
		FUNC1(usb3, USB_INT_1_B2_SPND |
				  USB_INT_1_B2_L1SPND | USB_INT_1_B2_USBRST);
}