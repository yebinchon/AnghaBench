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
typedef  int u32 ;
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_dot11_grp_addr_tbl {int enabled; int num_groups; int /*<<< orphan*/  mac_table; int /*<<< orphan*/  role_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ACX ; 
 int /*<<< orphan*/  DOT11_GROUP_ADDRESS_TBL ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_dot11_grp_addr_tbl*) ; 
 struct acx_dot11_grp_addr_tbl* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_dot11_grp_addr_tbl*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif,
				 bool enable, void *mc_list, u32 mc_list_len)
{
	struct acx_dot11_grp_addr_tbl *acx;
	int ret;

	FUNC4(DEBUG_ACX, "acx group address tbl");

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	/* MAC filtering */
	acx->role_id = wlvif->role_id;
	acx->enabled = enable;
	acx->num_groups = mc_list_len;
	FUNC2(acx->mac_table, mc_list, mc_list_len * ETH_ALEN);

	ret = FUNC3(wl, DOT11_GROUP_ADDRESS_TBL,
				   acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("failed to set group addr table: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}