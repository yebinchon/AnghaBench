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
struct lpc32xx_udc {int pullup; int /*<<< orphan*/  vbus; int /*<<< orphan*/  enabled; int /*<<< orphan*/  clocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpc32xx_udc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct lpc32xx_udc *udc, int is_on)
{
	if (!udc->clocked)
		return;

	if (!udc->enabled || !udc->vbus)
		is_on = 0;

	if (is_on != udc->pullup)
		FUNC0(udc, is_on, 0);
}