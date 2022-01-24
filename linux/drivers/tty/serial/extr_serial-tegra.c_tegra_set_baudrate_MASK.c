#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct tegra_uart_port {unsigned int current_baud; unsigned long required_rate; unsigned long lcr_shadow; TYPE_2__ uport; int /*<<< orphan*/  uart_clk; void* configured_rate; scalar_t__ n_adjustable_baud_rates; TYPE_1__* cdata; } ;
struct TYPE_3__ {scalar_t__ support_clk_src_div; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_LCR ; 
 unsigned long UART_LCR_DLAB ; 
 int /*<<< orphan*/  UART_SCR ; 
 int /*<<< orphan*/  UART_TX ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (struct tegra_uart_port*) ; 
 unsigned long FUNC7 (struct tegra_uart_port*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct tegra_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_uart_port*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_uart_port*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct tegra_uart_port *tup, unsigned int baud)
{
	unsigned long rate;
	unsigned int divisor;
	unsigned long lcr;
	unsigned long flags;
	int ret;

	if (tup->current_baud == baud)
		return 0;

	if (tup->cdata->support_clk_src_div) {
		rate = baud * 16;
		tup->required_rate = rate;

		if (tup->n_adjustable_baud_rates)
			rate = FUNC7(tup, baud, rate);

		ret = FUNC2(tup->uart_clk, rate);
		if (ret < 0) {
			FUNC3(tup->uport.dev,
				"clk_set_rate() failed for rate %lu\n", rate);
			return ret;
		}
		tup->configured_rate = FUNC1(tup->uart_clk);
		divisor = 1;
		ret = FUNC6(tup);
		if (ret < 0)
			return ret;
	} else {
		rate = FUNC1(tup->uart_clk);
		divisor = FUNC0(rate, baud * 16);
	}

	FUNC4(&tup->uport.lock, flags);
	lcr = tup->lcr_shadow;
	lcr |= UART_LCR_DLAB;
	FUNC10(tup, lcr, UART_LCR);

	FUNC10(tup, divisor & 0xFF, UART_TX);
	FUNC10(tup, ((divisor >> 8) & 0xFF), UART_IER);

	lcr &= ~UART_LCR_DLAB;
	FUNC10(tup, lcr, UART_LCR);

	/* Dummy read to ensure the write is posted */
	FUNC8(tup, UART_SCR);
	FUNC5(&tup->uport.lock, flags);

	tup->current_baud = baud;

	/* wait two character intervals at new rate */
	FUNC9(tup, 2);
	return 0;
}