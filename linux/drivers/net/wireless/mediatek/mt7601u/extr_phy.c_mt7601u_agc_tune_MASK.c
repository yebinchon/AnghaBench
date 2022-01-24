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
struct mt7601u_dev {int /*<<< orphan*/  con_mon_lock; int /*<<< orphan*/  avg_rssi; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT7601U_STATE_SCANNING ; 
 long FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mt7601u_dev*) ; 
 scalar_t__ FUNC2 (struct mt7601u_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct mt7601u_dev *dev)
{
	u8 val = FUNC1(dev);
	long avg_rssi;

	if (FUNC6(MT7601U_STATE_SCANNING, &dev->state))
		return;

	/* Note: only in STA mode and not dozing; perhaps do this only if
	 *	 there is enough rssi updates since last run?
	 *	 Rssi updates are only on beacons and U2M so should work...
	 */
	FUNC4(&dev->con_mon_lock);
	avg_rssi = FUNC0(&dev->avg_rssi);
	FUNC5(&dev->con_mon_lock);
	if (avg_rssi == 0)
		return;

	avg_rssi = -avg_rssi;
	if (avg_rssi <= -70)
		val -= 0x20;
	else if (avg_rssi <= -60)
		val -= 0x10;

	if (val != FUNC2(dev, 66))
		FUNC3(dev, 66, val);

	/* TODO: also if lost a lot of beacons try resetting
	 *       (see RTMPSetAGCInitValue() call in mlme.c).
	 */
}