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
struct regulator_dev {int dummy; } ;
struct mc13xxx_regulator_priv {unsigned int powermisc_pwgt_state; int /*<<< orphan*/  mc13xxx; } ;
struct TYPE_2__ {unsigned int enable_bit; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 unsigned int MC13892_POWERMISC_PWGTSPI_M ; 
 TYPE_1__* mc13892_regulators ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mc13xxx_regulator_priv* FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev)
{
	struct mc13xxx_regulator_priv *priv = FUNC3(rdev);
	int ret, id = FUNC4(rdev);
	unsigned int val;

	FUNC0(priv->mc13xxx);
	ret = FUNC1(priv->mc13xxx, mc13892_regulators[id].reg, &val);
	FUNC2(priv->mc13xxx);

	if (ret)
		return ret;

	/* Power Gates state is stored in powermisc_pwgt_state
	 * where the meaning of bits is negated */
	val = (val & ~MC13892_POWERMISC_PWGTSPI_M) |
		(priv->powermisc_pwgt_state ^ MC13892_POWERMISC_PWGTSPI_M);

	return (val & mc13892_regulators[id].enable_bit) != 0;
}