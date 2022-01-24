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
typedef  scalar_t__ u8 ;
struct wl1271 {int fuse_oui_addr; int fuse_nic_addr; int /*<<< orphan*/  mutex; TYPE_1__* hw; int /*<<< orphan*/  plt; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  WL1271_TM_ATTR_DATA ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,scalar_t__*) ; 

__attribute__((used)) static int FUNC6(struct wl1271 *wl, struct nlattr *tb[])
{
	struct sk_buff *skb;
	u8 mac_addr[ETH_ALEN];
	int ret = 0;

	FUNC3(&wl->mutex);

	if (!wl->plt) {
		ret = -EINVAL;
		goto out;
	}

	if (wl->fuse_oui_addr == 0 && wl->fuse_nic_addr == 0) {
		ret = -EOPNOTSUPP;
		goto out;
	}

	mac_addr[0] = (u8)(wl->fuse_oui_addr >> 16);
	mac_addr[1] = (u8)(wl->fuse_oui_addr >> 8);
	mac_addr[2] = (u8) wl->fuse_oui_addr;
	mac_addr[3] = (u8)(wl->fuse_nic_addr >> 16);
	mac_addr[4] = (u8)(wl->fuse_nic_addr >> 8);
	mac_addr[5] = (u8) wl->fuse_nic_addr;

	skb = FUNC0(wl->hw->wiphy, ETH_ALEN);
	if (!skb) {
		ret = -ENOMEM;
		goto out;
	}

	if (FUNC5(skb, WL1271_TM_ATTR_DATA, ETH_ALEN, mac_addr)) {
		FUNC2(skb);
		ret = -EMSGSIZE;
		goto out;
	}

	ret = FUNC1(skb);
	if (ret < 0)
		goto out;

out:
	FUNC4(&wl->mutex);
	return ret;
}