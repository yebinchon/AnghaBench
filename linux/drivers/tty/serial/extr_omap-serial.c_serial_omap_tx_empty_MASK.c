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
struct uart_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  line; int /*<<< orphan*/  dev; } ;
struct uart_omap_port {int /*<<< orphan*/  dev; TYPE_1__ port; } ;

/* Variables and functions */
 unsigned int TIOCSER_TEMT ; 
 int /*<<< orphan*/  UART_LSR ; 
 int UART_LSR_TEMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct uart_omap_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_omap_port* FUNC7 (struct uart_port*) ; 

__attribute__((used)) static unsigned int FUNC8(struct uart_port *port)
{
	struct uart_omap_port *up = FUNC7(port);
	unsigned long flags = 0;
	unsigned int ret = 0;

	FUNC1(up->dev);
	FUNC0(up->port.dev, "serial_omap_tx_empty+%d\n", up->port.line);
	FUNC5(&up->port.lock, flags);
	ret = FUNC4(up, UART_LSR) & UART_LSR_TEMT ? TIOCSER_TEMT : 0;
	FUNC6(&up->port.lock, flags);
	FUNC2(up->dev);
	FUNC3(up->dev);
	return ret;
}