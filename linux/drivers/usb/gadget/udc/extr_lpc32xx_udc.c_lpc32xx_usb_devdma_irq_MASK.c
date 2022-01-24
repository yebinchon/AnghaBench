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
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int NUM_ENDPOINTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct lpc32xx_udc*,TYPE_1__*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *_udc)
{
	struct lpc32xx_udc *udc = _udc;

	int i;
	u32 tmp;

	FUNC5(&udc->lock);

	/* Handle EP DMA EOT interrupts */
	tmp = FUNC4(FUNC0(udc->udp_baseaddr)) |
		(FUNC4(FUNC1(udc->udp_baseaddr)) &
		 FUNC4(FUNC2(udc->udp_baseaddr))) |
		FUNC4(FUNC3(udc->udp_baseaddr));
	for (i = 1; i < NUM_ENDPOINTS; i++) {
		if (tmp & (1 << udc->ep[i].hwep_num))
			FUNC7(udc, &udc->ep[i]);
	}

	FUNC6(&udc->lock);

	return IRQ_HANDLED;
}