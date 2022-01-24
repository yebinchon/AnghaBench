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
struct uart_8250_port {int capabilities; } ;

/* Variables and functions */
 int UART_CAP_EFR ; 
 int UART_CAP_SLEEP ; 
 int /*<<< orphan*/  UART_EFR ; 
 unsigned char UART_EFR_ECB ; 
 int /*<<< orphan*/  UART_IER ; 
 unsigned char UART_IERX_SLEEP ; 
 int /*<<< orphan*/  UART_LCR ; 
 unsigned char UART_LCR_CONF_MODE_B ; 
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 unsigned char FUNC2 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC4(struct uart_8250_port *p, int sleep)
{
	unsigned char lcr = 0, efr = 0;

	FUNC0(p);

	if (p->capabilities & UART_CAP_SLEEP) {
		if (p->capabilities & UART_CAP_EFR) {
			lcr = FUNC2(p, UART_LCR);
			efr = FUNC2(p, UART_EFR);
			FUNC3(p, UART_LCR, UART_LCR_CONF_MODE_B);
			FUNC3(p, UART_EFR, UART_EFR_ECB);
			FUNC3(p, UART_LCR, 0);
		}
		FUNC3(p, UART_IER, sleep ? UART_IERX_SLEEP : 0);
		if (p->capabilities & UART_CAP_EFR) {
			FUNC3(p, UART_LCR, UART_LCR_CONF_MODE_B);
			FUNC3(p, UART_EFR, efr);
			FUNC3(p, UART_LCR, lcr);
		}
	}

	FUNC1(p);
}