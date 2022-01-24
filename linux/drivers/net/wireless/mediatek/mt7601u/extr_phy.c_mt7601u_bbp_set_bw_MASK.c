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
struct mt7601u_dev {int bw; } ;

/* Variables and functions */
 int MT_BW_20 ; 
 int /*<<< orphan*/  MT_MAC_STATUS ; 
 int MT_MAC_STATUS_RX ; 
 int MT_MAC_STATUS_TX ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int MT_MAC_SYS_CTRL_ENABLE_RX ; 
 int MT_MAC_SYS_CTRL_ENABLE_TX ; 
 int /*<<< orphan*/  FUNC0 (struct mt7601u_dev*,int,int,int) ; 
 int FUNC1 (struct mt7601u_dev*) ; 
 int FUNC2 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7601u_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct mt7601u_dev *dev, int bw)
{
	u32 val, old;

	if (bw == dev->bw) {
		/* Vendor driver does the rmc even when no change is needed. */
		FUNC0(dev, 4, 0x18, bw == MT_BW_20 ? 0 : 0x10);

		return 0;
	}
	dev->bw = bw;

	/* Stop MAC for the time of bw change */
	old = FUNC2(dev, MT_MAC_SYS_CTRL);
	val = old & ~(MT_MAC_SYS_CTRL_ENABLE_TX | MT_MAC_SYS_CTRL_ENABLE_RX);
	FUNC3(dev, MT_MAC_SYS_CTRL, val);
	FUNC4(dev, MT_MAC_STATUS, MT_MAC_STATUS_TX | MT_MAC_STATUS_RX,
		  0, 500000);

	FUNC0(dev, 4, 0x18, bw == MT_BW_20 ? 0 : 0x10);

	FUNC3(dev, MT_MAC_SYS_CTRL, old);

	return FUNC1(dev);
}