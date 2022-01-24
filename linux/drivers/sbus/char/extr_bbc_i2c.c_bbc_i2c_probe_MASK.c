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
struct platform_device {int /*<<< orphan*/  dev; int /*<<< orphan*/ * resource; TYPE_1__ archdata; } ;
struct bbc_i2c_bus {scalar_t__ i2c_control_regs; scalar_t__ i2c_bussel_reg; } ;

/* Variables and functions */
 int EINVAL ; 
 struct bbc_i2c_bus* FUNC0 (struct platform_device*,int) ; 
 int FUNC1 (struct bbc_i2c_bus*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bbc_i2c_bus*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bbc_i2c_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct bbc_i2c_bus*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(struct platform_device *op)
{
	struct bbc_i2c_bus *bp;
	int err, index = 0;

	bp = FUNC0(op, index);
	if (!bp)
		return -EINVAL;

	err = FUNC1(bp);
	if (err) {
		FUNC3(op->archdata.irqs[0], bp);
		if (bp->i2c_bussel_reg)
			FUNC5(&op->resource[0], bp->i2c_bussel_reg, 1);
		if (bp->i2c_control_regs)
			FUNC5(&op->resource[1], bp->i2c_control_regs, 2);
		FUNC4(bp);
	} else {
		FUNC2(&op->dev, bp);
	}

	return err;
}