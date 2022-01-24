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
struct lpc32xx_udc {int /*<<< orphan*/  lock; TYPE_1__* ep; int /*<<< orphan*/  udp_baseaddr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int hwep_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_IN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EP_OUT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int NUM_ENDPOINTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USBD_EP_FAST ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct lpc32xx_udc*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpc32xx_udc*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpc32xx_udc*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *_udc)
{
	u32 tmp;
	struct lpc32xx_udc *udc = _udc;

	FUNC4(&udc->lock);

	/* Read the device status register */
	FUNC9(USBD_EP_FAST, FUNC1(udc->udp_baseaddr));

	/* Endpoints */
	tmp = FUNC3(FUNC2(udc->udp_baseaddr));

	/* Special handling for EP0 */
	if (tmp & (FUNC0(0, EP_OUT) | FUNC0(0, EP_IN))) {
		/* Handle EP0 IN */
		if (tmp & (FUNC0(0, EP_IN)))
			FUNC6(udc);

		/* Handle EP0 OUT */
		if (tmp & (FUNC0(0, EP_OUT)))
			FUNC7(udc);
	}

	/* All other EPs */
	if (tmp & ~(FUNC0(0, EP_OUT) | FUNC0(0, EP_IN))) {
		int i;

		/* Handle other EP interrupts */
		for (i = 1; i < NUM_ENDPOINTS; i++) {
			if (tmp & (1 << udc->ep[i].hwep_num))
				FUNC8(udc, &udc->ep[i]);
		}
	}

	FUNC5(&udc->lock);

	return IRQ_HANDLED;
}