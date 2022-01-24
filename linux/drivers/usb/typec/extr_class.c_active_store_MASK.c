#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct typec_altmode {int active; TYPE_3__* ops; TYPE_1__ dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct altmode {TYPE_2__* partner; } ;
typedef  int ssize_t ;
struct TYPE_8__ {scalar_t__ active; } ;
struct TYPE_7__ {int (* activate ) (struct typec_altmode*,int) ;} ;
struct TYPE_6__ {TYPE_4__ adev; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int*) ; 
 int FUNC3 (struct typec_altmode*,int) ; 
 struct altmode* FUNC4 (struct typec_altmode*) ; 
 struct typec_altmode* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct typec_altmode*,int) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t size)
{
	struct typec_altmode *adev = FUNC5(dev);
	struct altmode *altmode = FUNC4(adev);
	bool enter;
	int ret;

	ret = FUNC2(buf, &enter);
	if (ret)
		return ret;

	if (adev->active == enter)
		return size;

	if (FUNC1(adev->dev.parent)) {
		FUNC7(adev, enter);

		/* Make sure that the partner exits the mode before disabling */
		if (altmode->partner && !enter && altmode->partner->adev.active)
			FUNC6(&altmode->partner->adev);
	} else if (altmode->partner) {
		if (enter && !altmode->partner->adev.active) {
			FUNC0(dev, "port has the mode disabled\n");
			return -EPERM;
		}
	}

	/* Note: If there is no driver, the mode will not be entered */
	if (adev->ops && adev->ops->activate) {
		ret = adev->ops->activate(adev, enter);
		if (ret)
			return ret;
	}

	return size;
}