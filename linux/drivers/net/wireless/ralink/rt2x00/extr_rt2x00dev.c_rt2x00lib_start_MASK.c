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
struct rt2x00_dev {int /*<<< orphan*/  flags; scalar_t__ intf_associated; scalar_t__ intf_sta_count; scalar_t__ intf_ap_count; TYPE_2__* ops; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* pre_reset_hw ) (struct rt2x00_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_RESET ; 
 int /*<<< orphan*/  DEVICE_STATE_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct rt2x00_dev*) ; 
 int FUNC2 (struct rt2x00_dev*) ; 
 int FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct rt2x00_dev *rt2x00dev)
{
	int retval = 0;

	if (FUNC7(DEVICE_STATE_STARTED, &rt2x00dev->flags)) {
		/*
		 * This is special case for ieee80211_restart_hw(), otherwise
		 * mac80211 never call start() two times in row without stop();
		 */
		FUNC5(DEVICE_STATE_RESET, &rt2x00dev->flags);
		rt2x00dev->ops->lib->pre_reset_hw(rt2x00dev);
		FUNC4(rt2x00dev);
	}

	/*
	 * If this is the first interface which is added,
	 * we should load the firmware now.
	 */
	retval = FUNC3(rt2x00dev);
	if (retval)
		goto out;

	/*
	 * Initialize the device.
	 */
	retval = FUNC2(rt2x00dev);
	if (retval)
		goto out;

	rt2x00dev->intf_ap_count = 0;
	rt2x00dev->intf_sta_count = 0;
	rt2x00dev->intf_associated = 0;

	/* Enable the radio */
	retval = FUNC1(rt2x00dev);
	if (retval)
		goto out;

	FUNC5(DEVICE_STATE_STARTED, &rt2x00dev->flags);

out:
	FUNC0(DEVICE_STATE_RESET, &rt2x00dev->flags);
	return retval;
}