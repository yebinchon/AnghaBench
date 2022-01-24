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
struct TYPE_4__ {int /*<<< orphan*/  attr; } ;
struct TYPE_3__ {int /*<<< orphan*/  hotkey_tablet; } ;

/* Variables and functions */
 int TP_HOTKEY_TABLET_MASK ; 
 int /*<<< orphan*/  TP_HOTKEY_TABLET_USES_GMMS ; 
 int /*<<< orphan*/  TP_HOTKEY_TABLET_USES_MHKG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int*,char*,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ dev_attr_hotkey_tablet_mode ; 
 int /*<<< orphan*/  hkey_handle ; 
 int /*<<< orphan*/  hotkey_dev_attributes ; 
 int FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 TYPE_1__ tp_features ; 

__attribute__((used)) static int FUNC4(void)
{
	int in_tablet_mode = 0, res;
	char *type = NULL;

	if (FUNC0(hkey_handle, &res, "GMMS", "qdd", 0)) {
		int has_tablet_mode;

		in_tablet_mode = FUNC2(res,
							     &has_tablet_mode);
		if (has_tablet_mode)
			tp_features.hotkey_tablet = TP_HOTKEY_TABLET_USES_GMMS;
		type = "GMMS";
	} else if (FUNC0(hkey_handle, &res, "MHKG", "qd")) {
		/* For X41t, X60t, X61t Tablets... */
		tp_features.hotkey_tablet = TP_HOTKEY_TABLET_USES_MHKG;
		in_tablet_mode = !!(res & TP_HOTKEY_TABLET_MASK);
		type = "MHKG";
	}

	if (!tp_features.hotkey_tablet)
		return 0;

	FUNC3("Tablet mode switch found (type: %s), currently in %s mode\n",
		type, in_tablet_mode ? "tablet" : "laptop");

	res = FUNC1(hotkey_dev_attributes,
			      &dev_attr_hotkey_tablet_mode.attr);
	if (res)
		return -1;

	return in_tablet_mode;
}