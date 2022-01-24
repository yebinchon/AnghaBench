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
struct typec_altmode_driver {int /*<<< orphan*/  (* remove ) (struct typec_altmode*) ;} ;
struct typec_altmode {int /*<<< orphan*/ * ops; int /*<<< orphan*/ * desc; scalar_t__ active; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct altmode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TYPEC_STATE_SAFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct typec_altmode*) ; 
 struct altmode* FUNC2 (struct typec_altmode*) ; 
 struct typec_altmode_driver* FUNC3 (int /*<<< orphan*/ ) ; 
 struct typec_altmode* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct altmode*) ; 
 int /*<<< orphan*/  FUNC6 (struct typec_altmode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct typec_altmode*,int) ; 

__attribute__((used)) static int FUNC8(struct device *dev)
{
	struct typec_altmode_driver *drv = FUNC3(dev->driver);
	struct typec_altmode *adev = FUNC4(dev);
	struct altmode *altmode = FUNC2(adev);

	FUNC5(altmode);

	if (drv->remove)
		drv->remove(FUNC4(dev));

	if (adev->active) {
		FUNC0(FUNC6(adev, TYPEC_STATE_SAFE));
		FUNC7(adev, false);
	}

	adev->desc = NULL;
	adev->ops = NULL;

	return 0;
}