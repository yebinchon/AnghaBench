#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_3__ {scalar_t__ iftype; } ;
struct qtnf_vif {int /*<<< orphan*/  netdev; int /*<<< orphan*/  vifid; TYPE_2__* mac; TYPE_1__ wdev; } ;
struct qlink_event_bss_leave {int /*<<< orphan*/  reason; } ;
struct TYPE_4__ {int /*<<< orphan*/  macid; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct qtnf_vif *vif,
			    const struct qlink_event_bss_leave *leave_info,
			    u16 len)
{
	if (FUNC5(len < sizeof(*leave_info))) {
		FUNC4("VIF%u.%u: payload is too short (%u < %zu)\n",
		       vif->mac->macid, vif->vifid, len,
		       sizeof(struct qlink_event_bss_leave));
		return -EINVAL;
	}

	if (vif->wdev.iftype != NL80211_IFTYPE_STATION) {
		FUNC4("VIF%u.%u: BSS_LEAVE event when not in STA mode\n",
		       vif->mac->macid, vif->vifid);
		return -EPROTO;
	}

	FUNC3("VIF%u.%u: disconnected\n", vif->mac->macid, vif->vifid);

	FUNC0(vif->netdev, FUNC1(leave_info->reason),
			      NULL, 0, 0, GFP_KERNEL);
	FUNC2(vif->netdev);

	return 0;
}