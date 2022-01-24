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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSET_USBH_PRIV ; 
 int /*<<< orphan*/  USBH_PRIV_UTMI_CTL_6368_REG ; 
 int USBH_PRIV_UTMI_CTL_NODRIV_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bcm63xx_udc *udc, bool is_on)
{
	u32 val, portmask = FUNC0(udc->pd->port_no);

	val = FUNC1(RSET_USBH_PRIV, USBH_PRIV_UTMI_CTL_6368_REG);
	if (is_on)
		val &= ~(portmask << USBH_PRIV_UTMI_CTL_NODRIV_SHIFT);
	else
		val |= (portmask << USBH_PRIV_UTMI_CTL_NODRIV_SHIFT);
	FUNC2(RSET_USBH_PRIV, val, USBH_PRIV_UTMI_CTL_6368_REG);
}