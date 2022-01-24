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
struct uart_port {long uartclk; int /*<<< orphan*/  status; int /*<<< orphan*/  private_data; } ;
struct ktermios {int c_cflag; } ;
struct dw8250_data {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int CRTSCTS ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UPSTAT_AUTOCTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,struct ktermios*,struct ktermios*) ; 
 struct dw8250_data* FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct ktermios*) ; 

__attribute__((used)) static void FUNC8(struct uart_port *p, struct ktermios *termios,
			       struct ktermios *old)
{
	unsigned int baud = FUNC7(termios);
	struct dw8250_data *d = FUNC6(p->private_data);
	long rate;
	int ret;

	if (FUNC0(d->clk))
		goto out;

	FUNC1(d->clk);
	rate = FUNC3(d->clk, baud * 16);
	if (rate < 0)
		ret = rate;
	else if (rate == 0)
		ret = -ENOENT;
	else
		ret = FUNC4(d->clk, rate);
	FUNC2(d->clk);

	if (!ret)
		p->uartclk = rate;

out:
	p->status &= ~UPSTAT_AUTOCTS;
	if (termios->c_cflag & CRTSCTS)
		p->status |= UPSTAT_AUTOCTS;

	FUNC5(p, termios, old);
}