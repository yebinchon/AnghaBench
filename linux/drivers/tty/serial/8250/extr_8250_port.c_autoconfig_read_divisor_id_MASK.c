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
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_LCR ; 
 unsigned char UART_LCR_CONF_MODE_A ; 
 unsigned int FUNC0 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*,unsigned int) ; 
 unsigned char FUNC2 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static unsigned int FUNC4(struct uart_8250_port *p)
{
	unsigned char old_lcr;
	unsigned int id, old_dl;

	old_lcr = FUNC2(p, UART_LCR);
	FUNC3(p, UART_LCR, UART_LCR_CONF_MODE_A);
	old_dl = FUNC0(p);
	FUNC1(p, 0);
	id = FUNC0(p);
	FUNC1(p, old_dl);

	FUNC3(p, UART_LCR, old_lcr);

	return id;
}