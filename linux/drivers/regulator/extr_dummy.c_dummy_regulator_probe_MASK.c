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
struct regulator_config {int /*<<< orphan*/ * init_data; int /*<<< orphan*/ * dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dummy_desc ; 
 int /*<<< orphan*/  dummy_initdata ; 
 int /*<<< orphan*/  dummy_regulator_rdev ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct regulator_config*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct regulator_config config = { };
	int ret;

	config.dev = &pdev->dev;
	config.init_data = &dummy_initdata;

	dummy_regulator_rdev = FUNC3(&dummy_desc, &config);
	if (FUNC0(dummy_regulator_rdev)) {
		ret = FUNC1(dummy_regulator_rdev);
		FUNC2("Failed to register regulator: %d\n", ret);
		return ret;
	}

	return 0;
}