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
struct usba_udc {int /*<<< orphan*/  lock; scalar_t__ int_enb_cache; scalar_t__ suspended; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  INT_CLR ; 
 int /*<<< orphan*/  INT_ENB ; 
 int USBA_DET_SUSPEND ; 
 int USBA_ENABLE_MASK ; 
 int USBA_END_OF_RESET ; 
 int USBA_END_OF_RESUME ; 
 int USBA_WAKE_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct usba_udc*) ; 
 int /*<<< orphan*/  FUNC3 (struct usba_udc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usba_udc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usba_udc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct usba_udc *udc)
{
	unsigned long flags;
	int ret;

	ret = FUNC2(udc);
	if (ret)
		return ret;

	if (udc->suspended)
		return 0;

	FUNC0(&udc->lock, flags);
	FUNC3(udc, 1);
	FUNC5(udc, CTRL, USBA_ENABLE_MASK);
	/* Clear all requested and pending interrupts... */
	FUNC5(udc, INT_ENB, 0);
	udc->int_enb_cache = 0;
	FUNC5(udc, INT_CLR,
		USBA_END_OF_RESET|USBA_END_OF_RESUME
		|USBA_DET_SUSPEND|USBA_WAKE_UP);
	/* ...and enable just 'reset' IRQ to get us started */
	FUNC4(udc, USBA_END_OF_RESET);
	FUNC1(&udc->lock, flags);

	return 0;
}