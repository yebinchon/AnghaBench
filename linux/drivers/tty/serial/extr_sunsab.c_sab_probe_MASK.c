#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union sab82532_async_regs {int dummy; } sab82532_async_regs ;
struct TYPE_5__ {int /*<<< orphan*/  membase; int /*<<< orphan*/  line; } ;
struct uart_sunsab_port {TYPE_2__ port; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {int /*<<< orphan*/ * resource; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,struct uart_sunsab_port*) ; 
 int FUNC3 (struct uart_sunsab_port*,struct platform_device*,int,int) ; 
 struct uart_sunsab_port* sunsab_ports ; 
 int /*<<< orphan*/  sunsab_reg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *op)
{
	static int inst;
	struct uart_sunsab_port *up;
	int err;

	up = &sunsab_ports[inst * 2];

	err = FUNC3(&up[0], op,
			      0,
			      (inst * 2) + 0);
	if (err)
		goto out;

	err = FUNC3(&up[1], op,
			      sizeof(union sab82532_async_regs),
			      (inst * 2) + 1);
	if (err)
		goto out1;

	FUNC4(FUNC0(), op->dev.of_node,
				&sunsab_reg, up[0].port.line,
				false);

	FUNC4(FUNC0(), op->dev.of_node,
				&sunsab_reg, up[1].port.line,
				false);

	err = FUNC5(&sunsab_reg, &up[0].port);
	if (err)
		goto out2;

	err = FUNC5(&sunsab_reg, &up[1].port);
	if (err)
		goto out3;

	FUNC2(op, &up[0]);

	inst++;

	return 0;

out3:
	FUNC6(&sunsab_reg, &up[0].port);
out2:
	FUNC1(&op->resource[0],
		   up[1].port.membase,
		   sizeof(union sab82532_async_regs));
out1:
	FUNC1(&op->resource[0],
		   up[0].port.membase,
		   sizeof(union sab82532_async_regs));
out:
	return err;
}