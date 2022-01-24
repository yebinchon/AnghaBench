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
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct xenbus_device {TYPE_1__ dev; int /*<<< orphan*/  nodename; } ;
struct backend_info {struct backend_info* hotplug_script; int /*<<< orphan*/ * vif; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_OFFLINE ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  XenbusStateClosed ; 
 struct backend_info* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct backend_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct backend_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct backend_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct xenbus_device *dev)
{
	struct backend_info *be = FUNC0(&dev->dev);

	FUNC4(be, XenbusStateClosed);

	FUNC5(be);
	if (be->vif) {
		FUNC3(&dev->dev.kobj, KOBJ_OFFLINE);
		FUNC6(be->vif);
		FUNC7(XBT_NIL, dev->nodename, "hotplug-status");
		FUNC8(be->vif);
		be->vif = NULL;
	}
	FUNC2(be->hotplug_script);
	FUNC2(be);
	FUNC1(&dev->dev, NULL);
	return 0;
}