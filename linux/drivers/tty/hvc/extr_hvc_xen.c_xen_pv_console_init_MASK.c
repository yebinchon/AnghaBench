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
struct xencons_info {int /*<<< orphan*/ * intf; } ;
struct TYPE_4__ {int /*<<< orphan*/  evtchn; } ;
struct TYPE_5__ {TYPE_1__ domU; } ;
struct TYPE_6__ {TYPE_2__ console; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HVC_COOKIE ; 
 struct xencons_info* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct xencons_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_3__* xen_start_info ; 
 int /*<<< orphan*/  FUNC5 (struct xencons_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xencons_lock ; 

__attribute__((used)) static int FUNC6(void)
{
	struct xencons_info *info;

	if (!FUNC4())
		return -ENODEV;

	if (!xen_start_info->console.domU.evtchn)
		return -ENODEV;

	info = FUNC3(HVC_COOKIE);
	if (!info) {
		info = FUNC0(sizeof(struct xencons_info), GFP_KERNEL);
		if (!info)
			return -ENOMEM;
	} else if (info->intf != NULL) {
		/* already configured */
		return 0;
	}
	FUNC1(&xencons_lock);
	FUNC5(info, HVC_COOKIE);
	FUNC2(&xencons_lock);

	return 0;
}