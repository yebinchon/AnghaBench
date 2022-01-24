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
struct uart_port {int regshift; scalar_t__ membase; int /*<<< orphan*/  private_data; } ;
struct dw8250_data {int /*<<< orphan*/  uart_16550_compatible; } ;

/* Variables and functions */
 int UART_LCR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 struct dw8250_data* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct uart_port *p, int offset, int value)
{
	struct dw8250_data *d = FUNC2(p->private_data);

	FUNC1(value, p->membase + (offset << p->regshift));

	if (offset == UART_LCR && !d->uart_16550_compatible)
		FUNC0(p, value);
}