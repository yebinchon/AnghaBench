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
struct regulator_desc {int dummy; } ;
struct regulator_config {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct regulator_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  devm_rdev_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct regulator_dev**) ; 
 struct regulator_dev** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct regulator_dev**) ; 
 struct regulator_dev* FUNC5 (struct regulator_desc const*,struct regulator_config const*) ; 

struct regulator_dev *FUNC6(struct device *dev,
				  const struct regulator_desc *regulator_desc,
				  const struct regulator_config *config)
{
	struct regulator_dev **ptr, *rdev;

	ptr = FUNC3(devm_rdev_release, sizeof(*ptr),
			   GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	rdev = FUNC5(regulator_desc, config);
	if (!FUNC1(rdev)) {
		*ptr = rdev;
		FUNC2(dev, ptr);
	} else {
		FUNC4(ptr);
	}

	return rdev;
}