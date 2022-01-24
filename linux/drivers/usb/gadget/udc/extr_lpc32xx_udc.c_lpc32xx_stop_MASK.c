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
struct usb_gadget {int dummy; } ;
struct lpc32xx_udc {int /*<<< orphan*/ * driver; scalar_t__ enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  enabled_ep_cnt; int /*<<< orphan*/  ep_disable_wait_queue; scalar_t__ clocked; int /*<<< orphan*/  isp1301_i2c_client; } ;

/* Variables and functions */
 int ISP1301_I2C_INTERRUPT_FALLING ; 
 int ISP1301_I2C_INTERRUPT_RISING ; 
 int ISP1301_I2C_REG_CLEAR_ADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct lpc32xx_udc*) ; 
 struct lpc32xx_udc* FUNC5 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpc32xx_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct usb_gadget *gadget)
{
	struct lpc32xx_udc *udc = FUNC5(gadget);

	FUNC1(udc->isp1301_i2c_client,
		ISP1301_I2C_INTERRUPT_FALLING | ISP1301_I2C_REG_CLEAR_ADDR, ~0);
	FUNC1(udc->isp1301_i2c_client,
		ISP1301_I2C_INTERRUPT_RISING | ISP1301_I2C_REG_CLEAR_ADDR, ~0);

	if (udc->clocked) {
		FUNC2(&udc->lock);
		FUNC4(udc);
		FUNC3(&udc->lock);

		/*
		 *  Wait for all the endpoints to disable,
		 *  before disabling clocks. Don't wait if
		 *  endpoints are not enabled.
		 */
		if (FUNC0(&udc->enabled_ep_cnt))
			FUNC7(udc->ep_disable_wait_queue,
				(FUNC0(&udc->enabled_ep_cnt) == 0));

		FUNC2(&udc->lock);
		FUNC6(udc, 0);
		FUNC3(&udc->lock);
	}

	udc->enabled = 0;
	udc->driver = NULL;

	return 0;
}