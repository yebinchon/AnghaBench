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
struct TYPE_2__ {struct fintek_8250* private_data; int /*<<< orphan*/  dev; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct fintek_8250 {int dummy; } ;
typedef  int /*<<< orphan*/  probe_data ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct fintek_8250* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct fintek_8250*,struct fintek_8250*,int) ; 
 scalar_t__ FUNC4 (struct fintek_8250*,struct uart_8250_port*) ; 

int FUNC5(struct uart_8250_port *uart)
{
	struct fintek_8250 *pdata;
	struct fintek_8250 probe_data;

	if (FUNC4(&probe_data, uart))
		return -ENODEV;

	pdata = FUNC0(uart->port.dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return -ENOMEM;

	FUNC3(pdata, &probe_data, sizeof(probe_data));
	uart->port.private_data = pdata;
	FUNC1(uart);
	FUNC2(uart);

	return 0;
}