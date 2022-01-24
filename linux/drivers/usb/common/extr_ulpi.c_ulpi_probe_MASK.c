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
struct ulpi_driver {int (* probe ) (int /*<<< orphan*/ ) ;} ;
struct device {int /*<<< orphan*/  of_node; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct ulpi_driver* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct ulpi_driver *drv = FUNC3(dev->driver);
	int ret;

	ret = FUNC0(dev->of_node, false);
	if (ret < 0)
		return ret;

	return drv->probe(FUNC2(dev));
}