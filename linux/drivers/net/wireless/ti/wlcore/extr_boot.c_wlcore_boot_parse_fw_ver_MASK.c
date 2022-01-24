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
struct wl1271_static_data {int /*<<< orphan*/  fw_version; } ;
struct TYPE_2__ {char* fw_ver_str; int /*<<< orphan*/ * fw_ver; } ;
struct wl1271 {TYPE_1__ chip; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct wl1271*) ; 

__attribute__((used)) static int FUNC5(struct wl1271 *wl,
				    struct wl1271_static_data *static_data)
{
	int ret;

	FUNC2(wl->chip.fw_ver_str, static_data->fw_version,
		sizeof(wl->chip.fw_ver_str));

	/* make sure the string is NULL-terminated */
	wl->chip.fw_ver_str[sizeof(wl->chip.fw_ver_str) - 1] = '\0';

	ret = FUNC1(wl->chip.fw_ver_str + 4, "%u.%u.%u.%u.%u",
		     &wl->chip.fw_ver[0], &wl->chip.fw_ver[1],
		     &wl->chip.fw_ver[2], &wl->chip.fw_ver[3],
		     &wl->chip.fw_ver[4]);

	if (ret != 5) {
		FUNC3("fw version incorrect value");
		FUNC0(wl->chip.fw_ver, 0, sizeof(wl->chip.fw_ver));
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC4(wl);
	if (ret < 0)
		goto out;
out:
	return ret;
}