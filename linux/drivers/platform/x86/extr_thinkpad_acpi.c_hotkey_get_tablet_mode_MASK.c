#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int hotkey_tablet; } ;

/* Variables and functions */
 int EIO ; 
 int TP_HOTKEY_TABLET_MASK ; 
#define  TP_HOTKEY_TABLET_USES_GMMS 129 
#define  TP_HOTKEY_TABLET_USES_MHKG 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,char*,char*,...) ; 
 int /*<<< orphan*/  hkey_handle ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__ tp_features ; 

__attribute__((used)) static int FUNC2(int *status)
{
	int s;

	switch (tp_features.hotkey_tablet) {
	case TP_HOTKEY_TABLET_USES_MHKG:
		if (!FUNC0(hkey_handle, &s, "MHKG", "d"))
			return -EIO;

		*status = ((s & TP_HOTKEY_TABLET_MASK) != 0);
		break;
	case TP_HOTKEY_TABLET_USES_GMMS:
		if (!FUNC0(hkey_handle, &s, "GMMS", "dd", 0))
			return -EIO;

		*status = FUNC1(s, NULL);
		break;
	default:
		break;
	}

	return 0;
}