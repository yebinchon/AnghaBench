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
struct gbphy_driver {int /*<<< orphan*/  (* remove ) (struct gbphy_device*) ;} ;
struct gbphy_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct gbphy_device*) ; 
 struct gbphy_device* FUNC5 (struct device*) ; 
 struct gbphy_driver* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct gbphy_driver *gbphy_drv = FUNC6(dev->driver);
	struct gbphy_device *gbphy_dev = FUNC5(dev);

	gbphy_drv->remove(gbphy_dev);

	FUNC0(dev);
	FUNC3(dev);
	FUNC2(dev);
	FUNC1(dev);

	return 0;
}