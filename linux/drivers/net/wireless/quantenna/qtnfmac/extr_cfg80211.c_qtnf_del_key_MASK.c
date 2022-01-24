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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct qtnf_vif {int /*<<< orphan*/  vifid; TYPE_1__* mac; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct qtnf_vif*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 
 struct qtnf_vif* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct wiphy *wiphy, struct net_device *dev,
			u8 key_index, bool pairwise, const u8 *mac_addr)
{
	struct qtnf_vif *vif = FUNC3(dev);
	int ret;

	ret = FUNC2(vif, key_index, pairwise, mac_addr);
	if (ret) {
		if (ret == -ENOENT) {
			FUNC0("VIF%u.%u: key index %d out of bounds\n",
				 vif->mac->macid, vif->vifid, key_index);
		} else {
			FUNC1("VIF%u.%u: failed to delete key: idx=%u pw=%u\n",
			       vif->mac->macid, vif->vifid,
			       key_index, pairwise);
		}
	}

	return ret;
}