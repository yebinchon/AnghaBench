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
struct TYPE_2__ {int /*<<< orphan*/ * irqs; } ;
struct platform_device {int /*<<< orphan*/ * resource; TYPE_1__ archdata; int /*<<< orphan*/  dev; } ;
struct bbc_i2c_bus {scalar_t__ i2c_control_regs; scalar_t__ i2c_bussel_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bbc_i2c_bus*) ; 
 struct bbc_i2c_bus* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bbc_i2c_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct bbc_i2c_bus*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *op)
{
	struct bbc_i2c_bus *bp = FUNC1(&op->dev);

	FUNC0(bp);

	FUNC2(op->archdata.irqs[0], bp);

	if (bp->i2c_bussel_reg)
		FUNC4(&op->resource[0], bp->i2c_bussel_reg, 1);
	if (bp->i2c_control_regs)
		FUNC4(&op->resource[1], bp->i2c_control_regs, 2);

	FUNC3(bp);

	return 0;
}