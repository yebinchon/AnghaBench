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
struct tty_port {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx; } ;
struct TYPE_4__ {unsigned long ignore_status_mask; TYPE_1__ icount; } ;
struct tegra_uart_port {TYPE_2__ uport; } ;

/* Variables and functions */
 char TTY_NORMAL ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned long UART_LSR_DR ; 
 int /*<<< orphan*/  UART_RX ; 
 char FUNC0 (struct tegra_uart_port*,unsigned long) ; 
 unsigned long FUNC1 (struct tegra_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_port*,unsigned char,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned char) ; 

__attribute__((used)) static void FUNC4(struct tegra_uart_port *tup,
		struct tty_port *tty)
{
	do {
		char flag = TTY_NORMAL;
		unsigned long lsr = 0;
		unsigned char ch;

		lsr = FUNC1(tup, UART_LSR);
		if (!(lsr & UART_LSR_DR))
			break;

		flag = FUNC0(tup, lsr);
		if (flag != TTY_NORMAL)
			continue;

		ch = (unsigned char) FUNC1(tup, UART_RX);
		tup->uport.icount.rx++;

		if (!FUNC3(&tup->uport, ch) && tty)
			FUNC2(tty, ch, flag);

		if (tup->uport.ignore_status_mask & UART_LSR_DR)
			continue;
	} while (1);
}