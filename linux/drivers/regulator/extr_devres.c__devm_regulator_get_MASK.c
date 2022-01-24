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
struct regulator {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct regulator* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct regulator*) ; 
 struct regulator* FUNC2 (struct device*,char const*,int) ; 
 int /*<<< orphan*/  devm_regulator_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct regulator**) ; 
 struct regulator** FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct regulator**) ; 

__attribute__((used)) static struct regulator *FUNC6(struct device *dev, const char *id,
					     int get_type)
{
	struct regulator **ptr, *regulator;

	ptr = FUNC4(devm_regulator_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	regulator = FUNC2(dev, id, get_type);
	if (!FUNC1(regulator)) {
		*ptr = regulator;
		FUNC3(dev, ptr);
	} else {
		FUNC5(ptr);
	}

	return regulator;
}