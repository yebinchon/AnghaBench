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
typedef  int /*<<< orphan*/  u8 ;
struct wl1271_command {int dummy; } ;
struct wl1271 {int /*<<< orphan*/  mutex; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_TESTMODE ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 size_t WL1271_TM_ATTR_DATA ; 
 size_t WL1271_TM_ATTR_IE_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct wl1271*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int FUNC8(struct wl1271 *wl, struct nlattr *tb[])
{
	int buf_len, ret;
	void *buf;
	u8 ie_id;

	FUNC6(DEBUG_TESTMODE, "testmode cmd configure");

	if (!tb[WL1271_TM_ATTR_DATA])
		return -EINVAL;
	if (!tb[WL1271_TM_ATTR_IE_ID])
		return -EINVAL;

	ie_id = FUNC3(tb[WL1271_TM_ATTR_IE_ID]);
	buf = FUNC2(tb[WL1271_TM_ATTR_DATA]);
	buf_len = FUNC4(tb[WL1271_TM_ATTR_DATA]);

	if (buf_len > sizeof(struct wl1271_command))
		return -EMSGSIZE;

	FUNC0(&wl->mutex);
	ret = FUNC5(wl, ie_id, buf, buf_len);
	FUNC1(&wl->mutex);

	if (ret < 0) {
		FUNC7("testmode cmd configure failed: %d", ret);
		return ret;
	}

	return 0;
}