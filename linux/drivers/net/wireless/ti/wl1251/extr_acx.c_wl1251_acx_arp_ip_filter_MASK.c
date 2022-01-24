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
struct wl1251_acx_arp_filter {int enable; int /*<<< orphan*/  address; int /*<<< orphan*/  version; } ;
struct wl1251 {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_ARP_IP_FILTER ; 
 int /*<<< orphan*/  ACX_IPV4_ADDR_SIZE ; 
 int /*<<< orphan*/  ACX_IPV4_VERSION ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl1251_acx_arp_filter*) ; 
 struct wl1251_acx_arp_filter* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1251*,int /*<<< orphan*/ ,struct wl1251_acx_arp_filter*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1251 *wl, bool enable, __be32 address)
{
	struct wl1251_acx_arp_filter *acx;
	int ret;

	FUNC4(DEBUG_ACX, "acx arp ip filter, enable: %d", enable);

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx)
		return -ENOMEM;

	acx->version = ACX_IPV4_VERSION;
	acx->enable = enable;

	if (enable)
		FUNC2(acx->address, &address, ACX_IPV4_ADDR_SIZE);

	ret = FUNC3(wl, ACX_ARP_IP_FILTER,
				   acx, sizeof(*acx));
	if (ret < 0)
		FUNC5("failed to set arp ip filter: %d", ret);

	FUNC0(acx);
	return ret;
}