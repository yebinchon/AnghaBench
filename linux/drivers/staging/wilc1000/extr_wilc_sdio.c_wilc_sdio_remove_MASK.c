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
struct wilc {int /*<<< orphan*/  rtc_clk; scalar_t__ gpio_irq; } ;
struct sdio_func {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct wilc* FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct wilc*) ; 

__attribute__((used)) static void FUNC5(struct sdio_func *func)
{
	struct wilc *wilc = FUNC3(func);

	/* free the GPIO in module remove */
	if (wilc->gpio_irq)
		FUNC2(wilc->gpio_irq);

	if (!FUNC0(wilc->rtc_clk))
		FUNC1(wilc->rtc_clk);

	FUNC4(wilc);
}