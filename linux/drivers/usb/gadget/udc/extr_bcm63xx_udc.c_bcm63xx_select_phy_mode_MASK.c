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
typedef  int u32 ;
struct bcm63xx_udc {TYPE_1__* pd; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_no; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int GPIO_PINMUX_OTHR_6328_USB_DEV ; 
 int GPIO_PINMUX_OTHR_6328_USB_HOST ; 
 int GPIO_PINMUX_OTHR_6328_USB_MASK ; 
 int /*<<< orphan*/  GPIO_PINMUX_OTHR_REG ; 
 int /*<<< orphan*/  RSET_USBH_PRIV ; 
 int /*<<< orphan*/  USBH_PRIV_SWAP_6368_REG ; 
 int USBH_PRIV_SWAP_USBD_MASK ; 
 int /*<<< orphan*/  USBH_PRIV_UTMI_CTL_6368_REG ; 
 int USBH_PRIV_UTMI_CTL_HOSTB_SHIFT ; 
 int USBH_PRIV_UTMI_CTL_NODRIV_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct bcm63xx_udc *udc, bool is_device)
{
	u32 val, portmask = FUNC1(udc->pd->port_no);

	if (FUNC0()) {
		/* configure pinmux to sense VBUS signal */
		val = FUNC2(GPIO_PINMUX_OTHR_REG);
		val &= ~GPIO_PINMUX_OTHR_6328_USB_MASK;
		val |= is_device ? GPIO_PINMUX_OTHR_6328_USB_DEV :
			       GPIO_PINMUX_OTHR_6328_USB_HOST;
		FUNC3(val, GPIO_PINMUX_OTHR_REG);
	}

	val = FUNC4(RSET_USBH_PRIV, USBH_PRIV_UTMI_CTL_6368_REG);
	if (is_device) {
		val |= (portmask << USBH_PRIV_UTMI_CTL_HOSTB_SHIFT);
		val |= (portmask << USBH_PRIV_UTMI_CTL_NODRIV_SHIFT);
	} else {
		val &= ~(portmask << USBH_PRIV_UTMI_CTL_HOSTB_SHIFT);
		val &= ~(portmask << USBH_PRIV_UTMI_CTL_NODRIV_SHIFT);
	}
	FUNC5(RSET_USBH_PRIV, val, USBH_PRIV_UTMI_CTL_6368_REG);

	val = FUNC4(RSET_USBH_PRIV, USBH_PRIV_SWAP_6368_REG);
	if (is_device)
		val |= USBH_PRIV_SWAP_USBD_MASK;
	else
		val &= ~USBH_PRIV_SWAP_USBD_MASK;
	FUNC5(RSET_USBH_PRIV, val, USBH_PRIV_SWAP_6368_REG);
}