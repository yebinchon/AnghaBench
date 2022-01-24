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
typedef  int u8 ;
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*) ; 
 int FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*,int) ; 

__attribute__((used)) static int FUNC3(struct uart_8250_port *port)
{
	u8 qmcr;
	int rs422 = 0;

	if (!FUNC0(port))
		return 0;
	qmcr = FUNC1(port);
	FUNC2(port, 0xFF);
	if (FUNC1(port))
		rs422 = 1;
	FUNC2(port, qmcr);
	return rs422;
}