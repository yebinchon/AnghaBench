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
typedef  int u8 ;
struct lpc32xx_udc {scalar_t__ enabled; int vbus; int last_vbus; int /*<<< orphan*/  gadget; int /*<<< orphan*/  isp1301_i2c_client; } ;

/* Variables and functions */
 int INT_SESS_VLD ; 
 int ISP1301_I2C_INTERRUPT_LATCH ; 
 int /*<<< orphan*/  ISP1301_I2C_INTERRUPT_SOURCE ; 
 int ISP1301_I2C_OTG_CONTROL_1 ; 
 int ISP1301_I2C_REG_CLEAR_ADDR ; 
 int /*<<< orphan*/  OTG1_VBUS_DISCHRG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct lpc32xx_udc *udc)
{
	u8 value;

	if (udc->enabled != 0) {
		/* Discharge VBUS real quick */
		FUNC1(udc->isp1301_i2c_client,
			ISP1301_I2C_OTG_CONTROL_1, OTG1_VBUS_DISCHRG);

		/* Give VBUS some time (100mS) to discharge */
		FUNC3(100);

		/* Disable VBUS discharge resistor */
		FUNC1(udc->isp1301_i2c_client,
			ISP1301_I2C_OTG_CONTROL_1 | ISP1301_I2C_REG_CLEAR_ADDR,
			OTG1_VBUS_DISCHRG);

		/* Clear interrupt */
		FUNC1(udc->isp1301_i2c_client,
			ISP1301_I2C_INTERRUPT_LATCH |
			ISP1301_I2C_REG_CLEAR_ADDR, ~0);

		/* Get the VBUS status from the transceiver */
		value = FUNC0(udc->isp1301_i2c_client,
						 ISP1301_I2C_INTERRUPT_SOURCE);

		/* VBUS on or off? */
		if (value & INT_SESS_VLD)
			udc->vbus = 1;
		else
			udc->vbus = 0;

		/* VBUS changed? */
		if (udc->last_vbus != udc->vbus) {
			udc->last_vbus = udc->vbus;
			FUNC2(&udc->gadget, udc->vbus);
		}
	}
}