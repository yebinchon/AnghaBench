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
struct TYPE_2__ {int /*<<< orphan*/  read_status_mask; } ;
struct uart_omap_port {int ier; int /*<<< orphan*/  dev; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 int /*<<< orphan*/  UART_LSR_DR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_omap_port*,int /*<<< orphan*/ ,int) ; 
 struct uart_omap_port* FUNC4 (struct uart_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	struct uart_omap_port *up = FUNC4(port);

	FUNC0(up->dev);
	up->ier &= ~(UART_IER_RLSI | UART_IER_RDI);
	up->port.read_status_mask &= ~UART_LSR_DR;
	FUNC3(up, UART_IER, up->ier);
	FUNC1(up->dev);
	FUNC2(up->dev);
}