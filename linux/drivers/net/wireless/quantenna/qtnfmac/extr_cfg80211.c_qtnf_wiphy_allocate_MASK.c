#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wiphy {int dummy; } ;
struct qtnf_wmac {int dummy; } ;
struct TYPE_4__ {int hw_capab; } ;
struct qtnf_bus {int /*<<< orphan*/  dev; TYPE_1__ hw_info; } ;
struct TYPE_5__ {int /*<<< orphan*/ * set_power_mgmt; int /*<<< orphan*/ * start_radar_detection; } ;

/* Variables and functions */
 int QLINK_HW_CAPAB_DFS_OFFLOAD ; 
 int QLINK_HW_CAPAB_PWR_MGMT ; 
 TYPE_2__ qtn_cfg80211_ops ; 
 int /*<<< orphan*/  FUNC0 (struct wiphy*,int /*<<< orphan*/ ) ; 
 struct wiphy* FUNC1 (TYPE_2__*,int) ; 

struct wiphy *FUNC2(struct qtnf_bus *bus)
{
	struct wiphy *wiphy;

	if (bus->hw_info.hw_capab & QLINK_HW_CAPAB_DFS_OFFLOAD)
		qtn_cfg80211_ops.start_radar_detection = NULL;

	if (!(bus->hw_info.hw_capab & QLINK_HW_CAPAB_PWR_MGMT))
		qtn_cfg80211_ops.set_power_mgmt	= NULL;

	wiphy = FUNC1(&qtn_cfg80211_ops, sizeof(struct qtnf_wmac));
	if (!wiphy)
		return NULL;

	FUNC0(wiphy, bus->dev);

	return wiphy;
}