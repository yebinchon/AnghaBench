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
struct wl1251 {int dummy; } ;
struct acx_revision {int /*<<< orphan*/  fw_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_FW_REV ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_revision*) ; 
 struct acx_revision* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct wl1251*,int /*<<< orphan*/ ,struct acx_revision*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(struct wl1251 *wl, char *buf, size_t len)
{
	struct acx_revision *rev;
	int ret;

	FUNC5(DEBUG_ACX, "acx fw rev");

	rev = FUNC1(sizeof(*rev), GFP_KERNEL);
	if (!rev)
		return -ENOMEM;

	ret = FUNC4(wl, ACX_FW_REV, rev, sizeof(*rev));
	if (ret < 0) {
		FUNC6("ACX_FW_REV interrogate failed");
		goto out;
	}

	/* be careful with the buffer sizes */
	FUNC3(buf, rev->fw_version, FUNC2(len, sizeof(rev->fw_version)));

	/*
	 * if the firmware version string is exactly
	 * sizeof(rev->fw_version) long or fw_len is less than
	 * sizeof(rev->fw_version) it won't be null terminated
	 */
	buf[FUNC2(len, sizeof(rev->fw_version)) - 1] = '\0';

out:
	FUNC0(rev);
	return ret;
}