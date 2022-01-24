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
struct TYPE_2__ {int /*<<< orphan*/  line; int /*<<< orphan*/  dev; } ;
struct uart_omap_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  ier; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER ; 
 int /*<<< orphan*/  UART_IER_MSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_omap_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uart_omap_port* FUNC5 (struct uart_port*) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port)
{
	struct uart_omap_port *up = FUNC5(port);

	FUNC0(up->port.dev, "serial_omap_enable_ms+%d\n", up->port.line);

	FUNC1(up->dev);
	up->ier |= UART_IER_MSI;
	FUNC4(up, UART_IER, up->ier);
	FUNC2(up->dev);
	FUNC3(up->dev);
}