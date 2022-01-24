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
struct regulator_dev {int dummy; } ;
struct mc13xxx_regulator_priv {int /*<<< orphan*/  mc13xxx; struct mc13xxx_regulator* mc13xxx_regulators; } ;
struct mc13xxx_regulator {unsigned int vsel_shift; int /*<<< orphan*/  vsel_mask; int /*<<< orphan*/  vsel_reg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct mc13xxx_regulator_priv* FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC3(struct regulator_dev *rdev,
					     unsigned selector)
{
	struct mc13xxx_regulator_priv *priv = FUNC1(rdev);
	struct mc13xxx_regulator *mc13xxx_regulators = priv->mc13xxx_regulators;
	int id = FUNC2(rdev);

	return FUNC0(priv->mc13xxx, mc13xxx_regulators[id].vsel_reg,
			       mc13xxx_regulators[id].vsel_mask,
			       selector << mc13xxx_regulators[id].vsel_shift);
}