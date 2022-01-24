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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct bbc_i2c_bus {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bbc_i2c_bus*,struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bbc_i2c_bus*,struct platform_device*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC4 (struct bbc_i2c_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bbc_i2c_bus*) ; 
 int /*<<< orphan*/  FUNC6 (struct bbc_i2c_bus*) ; 
 int /*<<< orphan*/  kenvctrld ; 
 int /*<<< orphan*/ * kenvctrld_task ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 

int FUNC9(struct bbc_i2c_bus *bp)
{
	struct platform_device *op;
	int temp_index = 0;
	int fan_index = 0;
	int devidx = 0;

	while ((op = FUNC4(bp, devidx++)) != NULL) {
		if (FUNC8(op->dev.of_node, "temperature"))
			FUNC3(bp, op, temp_index++);
		if (FUNC8(op->dev.of_node, "fan-control"))
			FUNC2(bp, op, fan_index++);
	}
	if (temp_index != 0 && fan_index != 0) {
		kenvctrld_task = FUNC7(kenvctrld, NULL, "kenvctrld");
		if (FUNC0(kenvctrld_task)) {
			int err = FUNC1(kenvctrld_task);

			kenvctrld_task = NULL;
			FUNC6(bp);
			FUNC5(bp);
			return err;
		}
	}

	return 0;
}