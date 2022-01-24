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
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CFG ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct mt76x02_dev *dev, int unit)
{
	int shift = unit ? 8 : 0;
	u32 val = (FUNC0(1) | FUNC0(3) | FUNC0(4) | FUNC0(5)) << shift;

	/* Enable RF BG */
	FUNC3(dev, FUNC1(CFG, 0x130), FUNC0(0) << shift);
	FUNC5(10, 20);

	/* Enable RFDIG LDO/AFE/ABB/ADDA */
	FUNC3(dev, FUNC1(CFG, 0x130), val);
	FUNC5(10, 20);

	/* Switch RFDIG power to internal LDO */
	FUNC2(dev, FUNC1(CFG, 0x130), FUNC0(2) << shift);
	FUNC5(10, 20);

	FUNC4(dev);

	FUNC3(dev, 0x530, 0xf);
}