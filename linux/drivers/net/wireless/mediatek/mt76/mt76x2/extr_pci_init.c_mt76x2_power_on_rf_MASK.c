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
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct mt76x02_dev *dev, int unit)
{
	int shift = unit ? 8 : 0;

	/* Enable RF BG */
	FUNC2(dev, 0x10130, FUNC0(0) << shift);
	FUNC4(10);

	/* Enable RFDIG LDO/AFE/ABB/ADDA */
	FUNC2(dev, 0x10130, (FUNC0(1) | FUNC0(3) | FUNC0(4) | FUNC0(5)) << shift);
	FUNC4(10);

	/* Switch RFDIG power to internal LDO */
	FUNC1(dev, 0x10130, FUNC0(2) << shift);
	FUNC4(10);

	FUNC3(dev);

	FUNC2(dev, 0x530, 0xf);
}