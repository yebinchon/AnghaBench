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
struct mc13xxx_regulator_priv {int /*<<< orphan*/  mc13xxx; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 unsigned int MC13892_REGULATORMODE1_VCAMCONFIGEN ; 
 unsigned int REGULATOR_MODE_FAST ; 
 TYPE_1__* mc13892_regulators ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mc13xxx_regulator_priv* FUNC3 (struct regulator_dev*) ; 
 int FUNC4 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC5(struct regulator_dev *rdev, unsigned int mode)
{
	unsigned int en_val = 0;
	struct mc13xxx_regulator_priv *priv = FUNC3(rdev);
	int ret, id = FUNC4(rdev);

	if (mode == REGULATOR_MODE_FAST)
		en_val = MC13892_REGULATORMODE1_VCAMCONFIGEN;

	FUNC0(priv->mc13xxx);
	ret = FUNC1(priv->mc13xxx, mc13892_regulators[id].reg,
		MC13892_REGULATORMODE1_VCAMCONFIGEN, en_val);
	FUNC2(priv->mc13xxx);

	return ret;
}