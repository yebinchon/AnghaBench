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
typedef  union sab82532_async_regs {int dummy; } sab82532_async_regs ;
struct TYPE_2__ {int /*<<< orphan*/  membase; } ;
struct uart_sunsab_port {TYPE_1__ port; } ;
struct platform_device {int /*<<< orphan*/ * resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct uart_sunsab_port* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  sunsab_reg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *op)
{
	struct uart_sunsab_port *up = FUNC1(op);

	FUNC2(&sunsab_reg, &up[1].port);
	FUNC2(&sunsab_reg, &up[0].port);
	FUNC0(&op->resource[0],
		   up[1].port.membase,
		   sizeof(union sab82532_async_regs));
	FUNC0(&op->resource[0],
		   up[0].port.membase,
		   sizeof(union sab82532_async_regs));

	return 0;
}