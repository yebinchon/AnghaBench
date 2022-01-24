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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct uart_omap_port {int ier; int /*<<< orphan*/  dev; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_omap_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_omap_port* FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port)
{
	struct uart_omap_port *up = FUNC6(port);
	unsigned long flags;

	FUNC0(up->dev);
	FUNC4(&up->port.lock, flags);
	up->ier |= UART_IER_RLSI | UART_IER_RDI;
	FUNC3(up, UART_IER, up->ier);
	FUNC5(&up->port.lock, flags);
	FUNC1(up->dev);
	FUNC2(up->dev);
}