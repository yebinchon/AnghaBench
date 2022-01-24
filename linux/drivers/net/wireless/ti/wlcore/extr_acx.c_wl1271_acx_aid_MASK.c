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
typedef  int /*<<< orphan*/  u16 ;
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_aid {int /*<<< orphan*/  aid; int /*<<< orphan*/  role_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_AID ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_aid*) ; 
 struct acx_aid* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_aid*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif, u16 aid)
{
	struct acx_aid *acx_aid;
	int ret;

	FUNC4(DEBUG_ACX, "acx aid");

	acx_aid = FUNC2(sizeof(*acx_aid), GFP_KERNEL);
	if (!acx_aid) {
		ret = -ENOMEM;
		goto out;
	}

	acx_aid->role_id = wlvif->role_id;
	acx_aid->aid = FUNC0(aid);

	ret = FUNC3(wl, ACX_AID, acx_aid, sizeof(*acx_aid));
	if (ret < 0) {
		FUNC5("failed to set aid: %d", ret);
		goto out;
	}

out:
	FUNC1(acx_aid);
	return ret;
}