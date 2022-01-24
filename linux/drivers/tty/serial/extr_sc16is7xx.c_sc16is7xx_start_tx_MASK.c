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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct sc16is7xx_port {int /*<<< orphan*/  kworker; } ;
struct sc16is7xx_one {int /*<<< orphan*/  tx_work; } ;

/* Variables and functions */
 struct sc16is7xx_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sc16is7xx_one* FUNC2 (struct uart_port*,struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port)
{
	struct sc16is7xx_port *s = FUNC0(port->dev);
	struct sc16is7xx_one *one = FUNC2(port, port);

	FUNC1(&s->kworker, &one->tx_work);
}