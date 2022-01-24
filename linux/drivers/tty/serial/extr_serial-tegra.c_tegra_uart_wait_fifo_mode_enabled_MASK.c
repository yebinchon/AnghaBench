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
struct tegra_uart_port {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned long TEGRA_UART_FCR_IIR_FIFO_EN ; 
 int /*<<< orphan*/  UART_IIR ; 
 unsigned long FUNC0 (struct tegra_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct tegra_uart_port *tup)
{
	unsigned long iir;
	unsigned int tmout = 100;

	do {
		iir = FUNC0(tup, UART_IIR);
		if (iir & TEGRA_UART_FCR_IIR_FIFO_EN)
			return 0;
		FUNC1(1);
	} while (--tmout);

	return -ETIMEDOUT;
}