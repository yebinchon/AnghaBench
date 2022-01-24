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
struct lpc32xx_udc {int dummy; } ;
struct lpc32xx_ep {int /*<<< orphan*/  hwep_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpc32xx_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpc32xx_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct lpc32xx_udc *udc, struct lpc32xx_ep *ep)
{
	/* Clear EP status */
	FUNC0(udc, ep->hwep_num);

	/* Send ZLP via FIFO mechanism */
	FUNC1(udc, ep->hwep_num, NULL, 0);
}