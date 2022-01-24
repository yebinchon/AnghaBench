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
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct mt76x02_dev *dev)
{
	FUNC2(dev, 0x10130, FUNC0(0) | FUNC0(16));
	FUNC4(1);

	FUNC1(dev, 0x1001c, 0xff);
	FUNC2(dev, 0x1001c, 0x30);

	FUNC3(dev, 0x10014, 0x484f);
	FUNC4(1);

	FUNC2(dev, 0x10130, FUNC0(17));
	FUNC4(125);

	FUNC1(dev, 0x10130, FUNC0(16));
	FUNC4(50);

	FUNC2(dev, 0x1014c, FUNC0(19) | FUNC0(20));
}