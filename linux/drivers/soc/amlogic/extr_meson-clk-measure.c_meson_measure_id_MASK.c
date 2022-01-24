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
struct meson_msr_id {unsigned int id; struct meson_msr* priv; } ;
struct meson_msr {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,unsigned int) ; 
 int EINVAL ; 
 int FUNC1 (int,unsigned int) ; 
 unsigned int MSR_BUSY ; 
 int /*<<< orphan*/  MSR_CLK_REG0 ; 
 int /*<<< orphan*/  MSR_CLK_REG2 ; 
 int MSR_CLK_SRC ; 
 int MSR_DURATION ; 
 int MSR_ENABLE ; 
 int MSR_RUN ; 
 unsigned int MSR_VAL_MASK ; 
 int /*<<< orphan*/  measure_lock ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct meson_msr_id *clk_msr_id,
			       unsigned int duration)
{
	struct meson_msr *priv = clk_msr_id->priv;
	unsigned int val;
	int ret;

	ret = FUNC2(&measure_lock);
	if (ret)
		return ret;

	FUNC7(priv->regmap, MSR_CLK_REG0, 0);

	/* Set measurement duration */
	FUNC6(priv->regmap, MSR_CLK_REG0, MSR_DURATION,
			   FUNC1(MSR_DURATION, duration - 1));

	/* Set ID */
	FUNC6(priv->regmap, MSR_CLK_REG0, MSR_CLK_SRC,
			   FUNC1(MSR_CLK_SRC, clk_msr_id->id));

	/* Enable & Start */
	FUNC6(priv->regmap, MSR_CLK_REG0,
			   MSR_RUN | MSR_ENABLE,
			   MSR_RUN | MSR_ENABLE);

	ret = FUNC5(priv->regmap, MSR_CLK_REG0,
				       val, !(val & MSR_BUSY), 10, 10000);
	if (ret) {
		FUNC3(&measure_lock);
		return ret;
	}

	/* Disable */
	FUNC6(priv->regmap, MSR_CLK_REG0, MSR_ENABLE, 0);

	/* Get the value in multiple of gate time counts */
	FUNC4(priv->regmap, MSR_CLK_REG2, &val);

	FUNC3(&measure_lock);

	if (val >= MSR_VAL_MASK)
		return -EINVAL;

	return FUNC0((val & MSR_VAL_MASK) * 1000000ULL,
				     duration);
}