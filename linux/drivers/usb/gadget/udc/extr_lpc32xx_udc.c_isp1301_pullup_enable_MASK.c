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
struct lpc32xx_udc {int pullup; int /*<<< orphan*/  pullup_job; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpc32xx_udc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct lpc32xx_udc *udc, int en_pullup,
				  int block)
{
	if (en_pullup == udc->pullup)
		return;

	udc->pullup = en_pullup;
	if (block)
		FUNC0(udc);
	else
		/* defer slow i2c pull up setting */
		FUNC1(&udc->pullup_job);
}