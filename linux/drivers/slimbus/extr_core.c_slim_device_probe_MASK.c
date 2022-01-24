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
struct slim_driver {int (* probe ) (struct slim_device*) ;} ;
struct slim_device {int /*<<< orphan*/  dev; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  SLIM_DEVICE_STATUS_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct slim_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct slim_device*) ; 
 int FUNC3 (struct slim_device*) ; 
 struct slim_device* FUNC4 (struct device*) ; 
 struct slim_driver* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct slim_device	*sbdev = FUNC4(dev);
	struct slim_driver	*sbdrv = FUNC5(dev->driver);
	int ret;

	ret = sbdrv->probe(sbdev);
	if (ret)
		return ret;

	/* try getting the logical address after probe */
	ret = FUNC2(sbdev);
	if (!ret) {
		FUNC1(sbdev, SLIM_DEVICE_STATUS_UP);
	} else {
		FUNC0(&sbdev->dev, "Failed to get logical address\n");
		ret = -EPROBE_DEFER;
	}

	return ret;
}