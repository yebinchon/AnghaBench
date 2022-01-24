#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  CORE ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 

int FUNC4(struct mt76x02_dev *dev)
{
	int i = 20;
	u32 val;

	do {
		val = FUNC3(dev, FUNC0(CORE, 0));
		if (val && ~val)
			break;
	} while (--i);

	if (!i) {
		FUNC2(dev->mt76.dev, "Error: BBP is not ready\n");
		return -EIO;
	}

	FUNC1(dev->mt76.dev, "BBP version %08x\n", val);
	return 0;
}