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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct sc16is7xx_port {int /*<<< orphan*/  kworker; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct sc16is7xx_one {int /*<<< orphan*/  reg_work; TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  SC16IS7XX_RECONF_MD ; 
 struct sc16is7xx_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sc16is7xx_one* FUNC2 (struct uart_port*,struct uart_port*) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port, unsigned int mctrl)
{
	struct sc16is7xx_port *s = FUNC0(port->dev);
	struct sc16is7xx_one *one = FUNC2(port, port);

	one->config.flags |= SC16IS7XX_RECONF_MD;
	FUNC1(&s->kworker, &one->reg_work);
}