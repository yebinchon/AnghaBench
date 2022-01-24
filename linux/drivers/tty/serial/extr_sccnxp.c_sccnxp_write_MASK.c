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
typedef  int u8 ;
struct uart_port {int regshift; scalar_t__ membase; int /*<<< orphan*/  dev; } ;
struct sccnxp_port {TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  trwd; } ;

/* Variables and functions */
 struct sccnxp_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct uart_port *port, u8 reg, u8 v)
{
	struct sccnxp_port *s = FUNC0(port->dev);

	FUNC2(v, port->membase + (reg << port->regshift));

	FUNC1(s->chip->trwd);
}