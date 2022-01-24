#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rt2x00_intf {int dummy; } ;
struct rt2x00_dev {TYPE_4__* hw; TYPE_3__* bcn; int /*<<< orphan*/  extra_tx_headroom; TYPE_2__* ops; int /*<<< orphan*/  sleep_work; int /*<<< orphan*/  autowakeup_work; int /*<<< orphan*/  intf_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  flags; int /*<<< orphan*/  txstatus_timer; int /*<<< orphan*/  bar_list_lock; int /*<<< orphan*/  bar_list; int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/  csr_mutex; int /*<<< orphan*/  irqmask_lock; int /*<<< orphan*/  drv_data; } ;
struct TYPE_11__ {int interface_modes; int /*<<< orphan*/  flags; scalar_t__* addr_mask; } ;
struct TYPE_10__ {int vif_data_size; TYPE_5__* wiphy; } ;
struct TYPE_9__ {scalar_t__ limit; } ;
struct TYPE_8__ {scalar_t__ drv_data_size; TYPE_1__* lib; scalar_t__ max_ap_intf; } ;
struct TYPE_7__ {int (* probe_hw ) (struct rt2x00_dev*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_CQM_RSSI_LIST ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  NL80211_IFTYPE_WDS ; 
 int /*<<< orphan*/  REQUIRE_DELAYED_RFKILL ; 
 int /*<<< orphan*/  WIPHY_FLAG_IBSS_RSN ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  rt2x00lib_autowakeup ; 
 int /*<<< orphan*/  rt2x00lib_intf_scheduled ; 
 int FUNC13 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  rt2x00lib_sleep ; 
 int /*<<< orphan*/  FUNC16 (struct rt2x00_dev*) ; 
 int FUNC17 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_5__*) ; 

int FUNC24(struct rt2x00_dev *rt2x00dev)
{
	int retval = -ENOMEM;

	/*
	 * Set possible interface combinations.
	 */
	FUNC15(rt2x00dev);

	/*
	 * Allocate the driver data memory, if necessary.
	 */
	if (rt2x00dev->ops->drv_data_size > 0) {
		rt2x00dev->drv_data = FUNC6(rt2x00dev->ops->drv_data_size,
			                      GFP_KERNEL);
		if (!rt2x00dev->drv_data) {
			retval = -ENOMEM;
			goto exit;
		}
	}

	FUNC20(&rt2x00dev->irqmask_lock);
	FUNC7(&rt2x00dev->csr_mutex);
	FUNC7(&rt2x00dev->conf_mutex);
	FUNC2(&rt2x00dev->bar_list);
	FUNC20(&rt2x00dev->bar_list_lock);
	FUNC5(&rt2x00dev->txstatus_timer, CLOCK_MONOTONIC,
		     HRTIMER_MODE_REL);

	FUNC19(DEVICE_STATE_PRESENT, &rt2x00dev->flags);

	/*
	 * Make room for rt2x00_intf inside the per-interface
	 * structure ieee80211_vif.
	 */
	rt2x00dev->hw->vif_data_size = sizeof(struct rt2x00_intf);

	/*
	 * rt2x00 devices can only use the last n bits of the MAC address
	 * for virtual interfaces.
	 */
	rt2x00dev->hw->wiphy->addr_mask[ETH_ALEN - 1] =
		(rt2x00dev->ops->max_ap_intf - 1);

	/*
	 * Initialize work.
	 */
	rt2x00dev->workqueue =
	    FUNC4("%s", 0, FUNC23(rt2x00dev->hw->wiphy));
	if (!rt2x00dev->workqueue) {
		retval = -ENOMEM;
		goto exit;
	}

	FUNC3(&rt2x00dev->intf_work, rt2x00lib_intf_scheduled);
	FUNC1(&rt2x00dev->autowakeup_work, rt2x00lib_autowakeup);
	FUNC3(&rt2x00dev->sleep_work, rt2x00lib_sleep);

	/*
	 * Let the driver probe the device to detect the capabilities.
	 */
	retval = rt2x00dev->ops->lib->probe_hw(rt2x00dev);
	if (retval) {
		FUNC8(rt2x00dev, "Failed to allocate device\n");
		goto exit;
	}

	/*
	 * Allocate queue array.
	 */
	retval = FUNC17(rt2x00dev);
	if (retval)
		goto exit;

	/* Cache TX headroom value */
	rt2x00dev->extra_tx_headroom = FUNC11(rt2x00dev);

	/*
	 * Determine which operating modes are supported, all modes
	 * which require beaconing, depend on the availability of
	 * beacon entries.
	 */
	rt2x00dev->hw->wiphy->interface_modes = FUNC0(NL80211_IFTYPE_STATION);
	if (rt2x00dev->bcn->limit > 0)
		rt2x00dev->hw->wiphy->interface_modes |=
		    FUNC0(NL80211_IFTYPE_ADHOC) |
#ifdef CONFIG_MAC80211_MESH
		    BIT(NL80211_IFTYPE_MESH_POINT) |
#endif
#ifdef CONFIG_WIRELESS_WDS
		    BIT(NL80211_IFTYPE_WDS) |
#endif
		    FUNC0(NL80211_IFTYPE_AP);

	rt2x00dev->hw->wiphy->flags |= WIPHY_FLAG_IBSS_RSN;

	FUNC22(rt2x00dev->hw->wiphy,
			      NL80211_EXT_FEATURE_CQM_RSSI_LIST);

	/*
	 * Initialize ieee80211 structure.
	 */
	retval = FUNC13(rt2x00dev);
	if (retval) {
		FUNC8(rt2x00dev, "Failed to initialize hw\n");
		goto exit;
	}

	/*
	 * Register extra components.
	 */
	FUNC16(rt2x00dev);
	FUNC12(rt2x00dev);
	FUNC10(rt2x00dev);

	/*
	 * Start rfkill polling.
	 */
	if (!FUNC9(rt2x00dev, REQUIRE_DELAYED_RFKILL))
		FUNC18(rt2x00dev);

	return 0;

exit:
	FUNC14(rt2x00dev);

	return retval;
}