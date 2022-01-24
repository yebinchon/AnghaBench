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
struct asus_wmi_driver {int /*<<< orphan*/  panel_power; TYPE_1__* quirks; } ;
struct TYPE_3__ {int wapf; scalar_t__ i8042_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  asus_quirks ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ quirk_asus_unknown ; 
 TYPE_1__* quirks ; 
 int wapf ; 

__attribute__((used)) static void FUNC4(struct asus_wmi_driver *driver)
{
	int ret;

	quirks = &quirk_asus_unknown;
	FUNC0(asus_quirks);

	driver->quirks = quirks;
	driver->panel_power = FB_BLANK_UNBLANK;

	/* overwrite the wapf setting if the wapf paramater is specified */
	if (wapf != -1)
		quirks->wapf = wapf;
	else
		wapf = quirks->wapf;

	if (quirks->i8042_filter) {
		ret = FUNC1(quirks->i8042_filter);
		if (ret) {
			FUNC3("Unable to install key filter\n");
			return;
		}
		FUNC2("Using i8042 filter function for receiving events\n");
	}
}