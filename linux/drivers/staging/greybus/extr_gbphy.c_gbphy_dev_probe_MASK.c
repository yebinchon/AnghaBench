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
struct gbphy_driver {int (* probe ) (struct gbphy_device*,struct gbphy_device_id const*) ;} ;
struct gbphy_device_id {int dummy; } ;
struct gbphy_device {int /*<<< orphan*/  bundle; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GB_GBPHY_AUTOSUSPEND_MS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct gbphy_device_id* FUNC2 (struct gbphy_device*,struct gbphy_driver*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int FUNC12 (struct gbphy_device*,struct gbphy_device_id const*) ; 
 struct gbphy_device* FUNC13 (struct device*) ; 
 struct gbphy_driver* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct device *dev)
{
	struct gbphy_driver *gbphy_drv = FUNC14(dev->driver);
	struct gbphy_device *gbphy_dev = FUNC13(dev);
	const struct gbphy_device_id *id;
	int ret;

	id = FUNC2(gbphy_dev, gbphy_drv);
	if (!id)
		return -ENODEV;

	/* for old kernels we need get_sync to resume parent devices */
	ret = FUNC0(gbphy_dev->bundle);
	if (ret < 0)
		return ret;

	FUNC9(dev, GB_GBPHY_AUTOSUSPEND_MS);
	FUNC11(dev);
	FUNC6(dev);
	FUNC8(dev);
	FUNC5(dev);

	/*
	 * Drivers should call put on the gbphy dev before returning
	 * from probe if they support runtime pm.
	 */
	ret = gbphy_drv->probe(gbphy_dev, id);
	if (ret) {
		FUNC3(dev);
		FUNC10(dev);
		FUNC7(dev);
		FUNC4(dev);
	}

	FUNC1(gbphy_dev->bundle);

	return ret;
}