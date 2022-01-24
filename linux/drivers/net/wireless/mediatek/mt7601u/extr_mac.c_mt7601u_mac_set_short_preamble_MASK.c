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
struct mt7601u_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_AUTO_RSP_CFG ; 
 int /*<<< orphan*/  MT_AUTO_RSP_PREAMB_SHORT ; 
 int /*<<< orphan*/  FUNC0 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct mt7601u_dev *dev, bool short_preamb)
{
	if (short_preamb)
		FUNC1(dev, MT_AUTO_RSP_CFG, MT_AUTO_RSP_PREAMB_SHORT);
	else
		FUNC0(dev, MT_AUTO_RSP_CFG, MT_AUTO_RSP_PREAMB_SHORT);
}