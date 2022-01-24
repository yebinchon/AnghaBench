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
struct parport_driver {int /*<<< orphan*/  (* detach ) (int /*<<< orphan*/ ) ;} ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *_drv)
{
	struct parport_driver *drv = _drv;

	if (FUNC0(dev) && drv->detach)
		drv->detach(FUNC2(dev));

	return 0;
}