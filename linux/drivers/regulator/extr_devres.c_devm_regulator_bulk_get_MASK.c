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
struct regulator_bulk_devres {int num_consumers; struct regulator_bulk_data* consumers; } ;
struct regulator_bulk_data {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_regulator_bulk_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct regulator_bulk_devres*) ; 
 struct regulator_bulk_devres* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator_bulk_devres*) ; 
 int FUNC3 (struct device*,int,struct regulator_bulk_data*) ; 

int FUNC4(struct device *dev, int num_consumers,
			    struct regulator_bulk_data *consumers)
{
	struct regulator_bulk_devres *devres;
	int ret;

	devres = FUNC1(devm_regulator_bulk_release,
			      sizeof(*devres), GFP_KERNEL);
	if (!devres)
		return -ENOMEM;

	ret = FUNC3(dev, num_consumers, consumers);
	if (!ret) {
		devres->consumers = consumers;
		devres->num_consumers = num_consumers;
		FUNC0(dev, devres);
	} else {
		FUNC2(devres);
	}

	return ret;
}