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
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271_acx_inconnection_sta {int /*<<< orphan*/  role_id; int /*<<< orphan*/  addr; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_UPDATE_INCONNECTION_STA_LIST ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl1271_acx_inconnection_sta*) ; 
 struct wl1271_acx_inconnection_sta* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_acx_inconnection_sta*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl,
				    struct wl12xx_vif *wlvif, u8 *addr)
{
	struct wl1271_acx_inconnection_sta *acx = NULL;
	int ret;

	FUNC4(DEBUG_ACX, "acx set inconnaction sta %pM", addr);

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx)
		return -ENOMEM;

	FUNC2(acx->addr, addr, ETH_ALEN);
	acx->role_id = wlvif->role_id;

	ret = FUNC3(wl, ACX_UPDATE_INCONNECTION_STA_LIST,
				   acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("acx set inconnaction sta failed: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}