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
 int /*<<< orphan*/  CFG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct mt76x02_dev *dev)
{
	FUNC3(dev, FUNC1(CFG, 0x130), FUNC0(0) | FUNC0(16));
	FUNC5(1);

	FUNC2(dev, FUNC1(CFG, 0x1c), 0xff);
	FUNC3(dev, FUNC1(CFG, 0x1c), 0x30);

	FUNC4(dev, FUNC1(CFG, 0x14), 0x484f);
	FUNC5(1);

	FUNC3(dev, FUNC1(CFG, 0x130), FUNC0(17));
	FUNC6(150, 200);

	FUNC2(dev, FUNC1(CFG, 0x130), FUNC0(16));
	FUNC6(50, 100);

	FUNC3(dev, FUNC1(CFG, 0x14c), FUNC0(19) | FUNC0(20));
}