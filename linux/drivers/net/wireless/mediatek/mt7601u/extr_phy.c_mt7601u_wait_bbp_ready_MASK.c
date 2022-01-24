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
typedef  int /*<<< orphan*/  u8 ;
struct mt7601u_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MT_BBP_REG_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7601u_dev*,int /*<<< orphan*/ ) ; 

int FUNC2(struct mt7601u_dev *dev)
{
	int i = 20;
	u8 val;

	do {
		val = FUNC1(dev, MT_BBP_REG_VERSION);
		if (val && ~val)
			break;
	} while (--i);

	if (!i) {
		FUNC0(dev->dev, "Error: BBP is not ready\n");
		return -EIO;
	}

	return 0;
}