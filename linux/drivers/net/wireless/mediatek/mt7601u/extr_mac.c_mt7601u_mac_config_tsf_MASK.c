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
typedef  int u32 ;
struct mt7601u_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  MT_BEACON_TIME_CFG ; 
 int MT_BEACON_TIME_CFG_INTVAL ; 
 int MT_BEACON_TIME_CFG_SYNC_MODE ; 
 int MT_BEACON_TIME_CFG_TBTT_EN ; 
 int MT_BEACON_TIME_CFG_TIMER_EN ; 
 int FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct mt7601u_dev *dev, bool enable, int interval)
{
	u32 val = FUNC1(dev, MT_BEACON_TIME_CFG);

	val &= ~(MT_BEACON_TIME_CFG_TIMER_EN |
		 MT_BEACON_TIME_CFG_SYNC_MODE |
		 MT_BEACON_TIME_CFG_TBTT_EN);

	if (!enable) {
		FUNC2(dev, MT_BEACON_TIME_CFG, val);
		return;
	}

	val &= ~MT_BEACON_TIME_CFG_INTVAL;
	val |= FUNC0(MT_BEACON_TIME_CFG_INTVAL, interval << 4) |
		MT_BEACON_TIME_CFG_TIMER_EN |
		MT_BEACON_TIME_CFG_SYNC_MODE |
		MT_BEACON_TIME_CFG_TBTT_EN;
}