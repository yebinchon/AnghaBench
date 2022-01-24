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
typedef  scalar_t__ u8 ;
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271_acx_arp_filter {int /*<<< orphan*/  address; scalar_t__ enable; int /*<<< orphan*/  version; int /*<<< orphan*/  role_id; } ;
struct wl1271 {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_ARP_IP_FILTER ; 
 int /*<<< orphan*/  ACX_IPV4_ADDR_SIZE ; 
 int /*<<< orphan*/  ACX_IPV4_VERSION ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl1271_acx_arp_filter*) ; 
 struct wl1271_acx_arp_filter* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_acx_arp_filter*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			     u8 enable, __be32 address)
{
	struct wl1271_acx_arp_filter *acx;
	int ret;

	FUNC4(DEBUG_ACX, "acx arp ip filter, enable: %d", enable);

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->role_id = wlvif->role_id;
	acx->version = ACX_IPV4_VERSION;
	acx->enable = enable;

	if (enable)
		FUNC2(acx->address, &address, ACX_IPV4_ADDR_SIZE);

	ret = FUNC3(wl, ACX_ARP_IP_FILTER,
				   acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("failed to set arp ip filter: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}