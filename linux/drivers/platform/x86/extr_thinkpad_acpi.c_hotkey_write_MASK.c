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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  hotkey; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EPERM ; 
 int ERESTARTSYS ; 
 int hotkey_all_mask ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  hotkey_mutex ; 
 int hotkey_reserved_mask ; 
 int hotkey_source_mask ; 
 int hotkey_user_mask ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char**) ; 
 int FUNC5 (char*,char*,int*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 TYPE_1__ tp_features ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

__attribute__((used)) static int FUNC8(char *buf)
{
	int res;
	u32 mask;
	char *cmd;

	if (!tp_features.hotkey)
		return -ENODEV;

	if (FUNC2(&hotkey_mutex))
		return -ERESTARTSYS;

	mask = hotkey_user_mask;

	res = 0;
	while ((cmd = FUNC4(&buf))) {
		if (FUNC6(cmd, "enable") == 0) {
			FUNC0(1);
		} else if (FUNC6(cmd, "disable") == 0) {
			FUNC0(0);
			res = -EPERM;
		} else if (FUNC6(cmd, "reset") == 0) {
			mask = (hotkey_all_mask | hotkey_source_mask)
				& ~hotkey_reserved_mask;
		} else if (FUNC5(cmd, "0x%x", &mask) == 1) {
			/* mask set */
		} else if (FUNC5(cmd, "%x", &mask) == 1) {
			/* mask set */
		} else {
			res = -EINVAL;
			goto errexit;
		}
	}

	if (!res) {
		FUNC7("procfs hotkey",
			"set mask to 0x%08x\n", mask);
		res = FUNC1(mask);
	}

errexit:
	FUNC3(&hotkey_mutex);
	return res;
}