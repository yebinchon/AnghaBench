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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_pwr_reg {scalar_t__ base; } ;
struct regulator_dev {int /*<<< orphan*/  dev; TYPE_1__* desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  enable_mask; } ;

/* Variables and functions */
 scalar_t__ REG_PWR_CR3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct stm32_pwr_reg* FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct regulator_dev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  stm32_pwr_reg_is_ready ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev)
{
	struct stm32_pwr_reg *priv = FUNC1(rdev);
	int ret;
	u32 val;

	val = FUNC2(priv->base + REG_PWR_CR3);
	val &= ~rdev->desc->enable_mask;
	FUNC4(val, priv->base + REG_PWR_CR3);

	/* use an arbitrary timeout of 20ms */
	ret = FUNC3(stm32_pwr_reg_is_ready, rdev, val, !val,
				 100, 20 * 1000);
	if (ret)
		FUNC0(&rdev->dev, "regulator disable timed out!\n");

	return ret;
}