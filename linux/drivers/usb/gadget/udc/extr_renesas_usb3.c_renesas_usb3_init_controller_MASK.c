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
 int /*<<< orphan*/  USB3_USB_COM_CON ; 
 int /*<<< orphan*/  USB3_USB_OTG_INT_ENA ; 
 int /*<<< orphan*/  USB3_USB_OTG_INT_STA ; 
 int USB_COM_CON_PN_LSTTR_PP ; 
 int USB_COM_CON_PN_RDATAIF_NL ; 
 int USB_COM_CON_PN_WDATAIF_NL ; 
 int /*<<< orphan*/  USB_OTG_IDMON ; 
 int /*<<< orphan*/  FUNC0 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC1 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC2 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC3 (struct renesas_usb3*) ; 
 int /*<<< orphan*/  FUNC4 (struct renesas_usb3*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct renesas_usb3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct renesas_usb3 *usb3)
{
	FUNC2(usb3);
	FUNC3(usb3);
	FUNC4(usb3, USB_COM_CON_PN_WDATAIF_NL |
		     USB_COM_CON_PN_RDATAIF_NL | USB_COM_CON_PN_LSTTR_PP,
		     USB3_USB_COM_CON);
	FUNC5(usb3, USB_OTG_IDMON, USB3_USB_OTG_INT_STA);
	FUNC5(usb3, USB_OTG_IDMON, USB3_USB_OTG_INT_ENA);

	FUNC0(usb3);
	FUNC1(usb3);
}