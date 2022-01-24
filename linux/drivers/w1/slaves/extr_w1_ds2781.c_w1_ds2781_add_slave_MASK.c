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
struct w1_slave {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct platform_device*) ; 
 int FUNC1 (struct platform_device*) ; 
 struct platform_device* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct w1_slave *sl)
{
	int ret;
	struct platform_device *pdev;

	pdev = FUNC2("ds2781-battery", PLATFORM_DEVID_AUTO);
	if (!pdev)
		return -ENOMEM;
	pdev->dev.parent = &sl->dev;

	ret = FUNC1(pdev);
	if (ret)
		goto pdev_add_failed;

	FUNC0(&sl->dev, pdev);

	return 0;

pdev_add_failed:
	FUNC3(pdev);

	return ret;
}