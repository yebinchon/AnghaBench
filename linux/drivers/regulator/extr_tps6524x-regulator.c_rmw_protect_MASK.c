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
struct tps6524x {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_WRITE_ENABLE ; 
 int FUNC0 (struct tps6524x*,int,int,int) ; 
 int FUNC1 (struct tps6524x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct tps6524x *hw, int reg, int mask, int val)
{
	int ret;

	FUNC3(&hw->lock);

	ret = FUNC1(hw, REG_WRITE_ENABLE, 1);
	if (ret) {
		FUNC2(hw->dev, "failed to set write enable\n");
		goto error;
	}

	ret = FUNC0(hw, reg, mask, val);
	if (ret)
		FUNC2(hw->dev, "failed to rmw register %d\n", reg);

	ret = FUNC1(hw, REG_WRITE_ENABLE, 0);
	if (ret) {
		FUNC2(hw->dev, "failed to clear write enable\n");
		goto error;
	}

error:
	FUNC4(&hw->lock);

	return ret;
}