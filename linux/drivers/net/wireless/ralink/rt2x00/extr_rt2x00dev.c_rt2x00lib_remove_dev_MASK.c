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
struct rt2x00_dev {int /*<<< orphan*/  drv_data; int /*<<< orphan*/  txstatus_fifo; scalar_t__ workqueue; int /*<<< orphan*/  autowake_tasklet; int /*<<< orphan*/  rxdone_tasklet; int /*<<< orphan*/  tbtt_tasklet; int /*<<< orphan*/  pretbtt_tasklet; int /*<<< orphan*/  txstatus_tasklet; int /*<<< orphan*/  txstatus_timer; int /*<<< orphan*/  sleep_work; int /*<<< orphan*/  autowakeup_work; int /*<<< orphan*/  intf_work; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int /*<<< orphan*/  REQUIRE_DELAYED_RFKILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

void FUNC17(struct rt2x00_dev *rt2x00dev)
{
	FUNC2(DEVICE_STATE_PRESENT, &rt2x00dev->flags);

	/*
	 * Stop rfkill polling.
	 */
	if (!FUNC7(rt2x00dev, REQUIRE_DELAYED_RFKILL))
		FUNC15(rt2x00dev);

	/*
	 * Disable radio.
	 */
	FUNC10(rt2x00dev);

	/*
	 * Stop all work.
	 */
	FUNC1(&rt2x00dev->intf_work);
	FUNC0(&rt2x00dev->autowakeup_work);
	FUNC1(&rt2x00dev->sleep_work);

	FUNC4(&rt2x00dev->txstatus_timer);

	/*
	 * Kill the tx status tasklet.
	 */
	FUNC16(&rt2x00dev->txstatus_tasklet);
	FUNC16(&rt2x00dev->pretbtt_tasklet);
	FUNC16(&rt2x00dev->tbtt_tasklet);
	FUNC16(&rt2x00dev->rxdone_tasklet);
	FUNC16(&rt2x00dev->autowake_tasklet);

	/*
	 * Uninitialize device.
	 */
	FUNC13(rt2x00dev);

	if (rt2x00dev->workqueue)
		FUNC3(rt2x00dev->workqueue);

	/*
	 * Free the tx status fifo.
	 */
	FUNC5(&rt2x00dev->txstatus_fifo);

	/*
	 * Free extra components
	 */
	FUNC8(rt2x00dev);
	FUNC9(rt2x00dev);

	/*
	 * Free ieee80211_hw memory.
	 */
	FUNC12(rt2x00dev);

	/*
	 * Free firmware image.
	 */
	FUNC11(rt2x00dev);

	/*
	 * Free queue structures.
	 */
	FUNC14(rt2x00dev);

	/*
	 * Free the driver data.
	 */
	FUNC6(rt2x00dev->drv_data);
}