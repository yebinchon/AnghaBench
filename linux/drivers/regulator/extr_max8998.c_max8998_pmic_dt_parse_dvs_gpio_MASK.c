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
struct max8998_platform_data {int buck1_set1; int buck1_set2; int buck2_set3; } ;
struct max8998_dev {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct device_node*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct max8998_dev *iodev,
			struct max8998_platform_data *pdata,
			struct device_node *pmic_np)
{
	int gpio;

	gpio = FUNC2(pmic_np, "max8998,pmic-buck1-dvs-gpios", 0);
	if (!FUNC1(gpio)) {
		FUNC0(iodev->dev, "invalid buck1 gpio[0]: %d\n", gpio);
		return -EINVAL;
	}
	pdata->buck1_set1 = gpio;

	gpio = FUNC2(pmic_np, "max8998,pmic-buck1-dvs-gpios", 1);
	if (!FUNC1(gpio)) {
		FUNC0(iodev->dev, "invalid buck1 gpio[1]: %d\n", gpio);
		return -EINVAL;
	}
	pdata->buck1_set2 = gpio;

	gpio = FUNC2(pmic_np, "max8998,pmic-buck2-dvs-gpio", 0);
	if (!FUNC1(gpio)) {
		FUNC0(iodev->dev, "invalid buck 2 gpio: %d\n", gpio);
		return -EINVAL;
	}
	pdata->buck2_set3 = gpio;

	return 0;
}