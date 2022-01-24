#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {TYPE_1__ dev; int /*<<< orphan*/  mutex; } ;
struct uwb_rc {TYPE_3__ uwb_dev; } ;
struct uwb_pal {char* name; TYPE_2__* device; int /*<<< orphan*/  debugfs_dir; int /*<<< orphan*/  node; struct uwb_rc* rc; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_pal*) ; 
 scalar_t__ FUNC6 (struct uwb_rc*) ; 

void FUNC7(struct uwb_pal *pal)
{
	struct uwb_rc *rc = pal->rc;

	FUNC5(pal);

	FUNC2(&rc->uwb_dev.mutex);
	FUNC1(&pal->node);
	FUNC3(&rc->uwb_dev.mutex);

	FUNC0(pal->debugfs_dir);

	if (pal->device) {
		/* remove link to the PAL in the UWB device's directory. */
		if (FUNC6(rc))
			FUNC4(&rc->uwb_dev.dev.kobj, pal->name);

		/* remove link to uwb_rc in the PAL device's directory. */
		FUNC4(&pal->device->kobj, "uwb_rc");
	}
}