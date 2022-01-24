#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; TYPE_1__* driver; int /*<<< orphan*/  parent; } ;
struct typec_altmode {int active; int mode; TYPE_2__ dev; } ;
typedef  int /*<<< orphan*/  dir ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct typec_altmode *adev, bool active)
{
	char dir[6];

	if (adev->active == active)
		return;

	if (!FUNC1(adev->dev.parent) && adev->dev.driver) {
		if (!active)
			FUNC3(adev->dev.driver->owner);
		else
			FUNC0(!FUNC6(adev->dev.driver->owner));
	}

	adev->active = active;
	FUNC4(dir, sizeof(dir), "mode%d", adev->mode);
	FUNC5(&adev->dev.kobj, dir, "active");
	FUNC5(&adev->dev.kobj, NULL, "active");
	FUNC2(&adev->dev.kobj, KOBJ_CHANGE);
}