#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct regulator_config {void* driver_data; int /*<<< orphan*/  init_data; TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct platform_device {size_t id; TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct regulator_dev* FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,struct regulator_config*) ; 
 int /*<<< orphan*/ * pcap_regulators ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct regulator_dev*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct regulator_dev *rdev;
	void *pcap = FUNC2(pdev->dev.parent);
	struct regulator_config config = { };

	config.dev = &pdev->dev;
	config.init_data = FUNC3(&pdev->dev);
	config.driver_data = pcap;

	rdev = FUNC4(&pdev->dev, &pcap_regulators[pdev->id],
				       &config);
	if (FUNC0(rdev))
		return FUNC1(rdev);

	FUNC5(pdev, rdev);

	return 0;
}