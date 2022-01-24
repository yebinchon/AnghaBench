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
struct rockchip_pcie {void* vpcie0v9; void* vpcie1v8; void* vpcie3v3; void* vpcie12v; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct rockchip_pcie*) ; 
 int FUNC5 (struct rockchip_pcie*) ; 

__attribute__((used)) static int FUNC6(struct rockchip_pcie *rockchip)
{
	struct device *dev = rockchip->dev;
	int err;

	err = FUNC4(rockchip);
	if (err)
		return err;

	err = FUNC5(rockchip);
	if (err)
		return err;

	rockchip->vpcie12v = FUNC3(dev, "vpcie12v");
	if (FUNC0(rockchip->vpcie12v)) {
		if (FUNC1(rockchip->vpcie12v) != -ENODEV)
			return FUNC1(rockchip->vpcie12v);
		FUNC2(dev, "no vpcie12v regulator found\n");
	}

	rockchip->vpcie3v3 = FUNC3(dev, "vpcie3v3");
	if (FUNC0(rockchip->vpcie3v3)) {
		if (FUNC1(rockchip->vpcie3v3) != -ENODEV)
			return FUNC1(rockchip->vpcie3v3);
		FUNC2(dev, "no vpcie3v3 regulator found\n");
	}

	rockchip->vpcie1v8 = FUNC3(dev, "vpcie1v8");
	if (FUNC0(rockchip->vpcie1v8)) {
		if (FUNC1(rockchip->vpcie1v8) != -ENODEV)
			return FUNC1(rockchip->vpcie1v8);
		FUNC2(dev, "no vpcie1v8 regulator found\n");
	}

	rockchip->vpcie0v9 = FUNC3(dev, "vpcie0v9");
	if (FUNC0(rockchip->vpcie0v9)) {
		if (FUNC1(rockchip->vpcie0v9) != -ENODEV)
			return FUNC1(rockchip->vpcie0v9);
		FUNC2(dev, "no vpcie0v9 regulator found\n");
	}

	return 0;
}