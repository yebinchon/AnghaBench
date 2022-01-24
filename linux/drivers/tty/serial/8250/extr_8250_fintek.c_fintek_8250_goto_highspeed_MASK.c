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
struct TYPE_2__ {int uartclk; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct fintek_8250 {int pid; int /*<<< orphan*/  index; } ;

/* Variables and functions */
#define  CHIP_ID_F81866 128 
 int /*<<< orphan*/  F81866_UART_CLK ; 
 int /*<<< orphan*/  F81866_UART_CLK_14_769MHZ ; 
 int /*<<< orphan*/  F81866_UART_CLK_MASK ; 
 int /*<<< orphan*/  LDN ; 
 int /*<<< orphan*/  FUNC0 (struct fintek_8250*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fintek_8250*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct uart_8250_port *uart,
			      struct fintek_8250 *pdata)
{
	FUNC1(pdata, LDN, pdata->index);

	switch (pdata->pid) {
	case CHIP_ID_F81866: /* set uart clock for high speed serial mode */
		FUNC0(pdata, F81866_UART_CLK,
			F81866_UART_CLK_MASK,
			F81866_UART_CLK_14_769MHZ);

		uart->port.uartclk = 921600 * 16;
		break;
	default: /* leave clock speed untouched */
		break;
	}
}