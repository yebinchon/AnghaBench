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
struct mt7601u_dev {scalar_t__ bw; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCU_CAL_BW ; 
 scalar_t__ MT_BW_20 ; 
 int FUNC0 (struct mt7601u_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct mt7601u_dev *dev, bool cal)
{
	u32 filter = 0;
	int ret;

	if (!cal)
		filter |= 0x10000;
	if (dev->bw != MT_BW_20)
		filter |= 0x00100;

	/* TX */
	ret = FUNC0(dev, MCU_CAL_BW, filter | 1);
	if (ret)
		return ret;
	/* RX */
	return FUNC0(dev, MCU_CAL_BW, filter);
}