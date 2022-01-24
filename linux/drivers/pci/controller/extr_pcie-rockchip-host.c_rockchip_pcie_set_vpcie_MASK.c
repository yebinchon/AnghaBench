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
struct rockchip_pcie {int /*<<< orphan*/  vpcie12v; int /*<<< orphan*/  vpcie3v3; int /*<<< orphan*/  vpcie1v8; int /*<<< orphan*/  vpcie0v9; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rockchip_pcie *rockchip)
{
	struct device *dev = rockchip->dev;
	int err;

	if (!FUNC0(rockchip->vpcie12v)) {
		err = FUNC3(rockchip->vpcie12v);
		if (err) {
			FUNC1(dev, "fail to enable vpcie12v regulator\n");
			goto err_out;
		}
	}

	if (!FUNC0(rockchip->vpcie3v3)) {
		err = FUNC3(rockchip->vpcie3v3);
		if (err) {
			FUNC1(dev, "fail to enable vpcie3v3 regulator\n");
			goto err_disable_12v;
		}
	}

	if (!FUNC0(rockchip->vpcie1v8)) {
		err = FUNC3(rockchip->vpcie1v8);
		if (err) {
			FUNC1(dev, "fail to enable vpcie1v8 regulator\n");
			goto err_disable_3v3;
		}
	}

	if (!FUNC0(rockchip->vpcie0v9)) {
		err = FUNC3(rockchip->vpcie0v9);
		if (err) {
			FUNC1(dev, "fail to enable vpcie0v9 regulator\n");
			goto err_disable_1v8;
		}
	}

	return 0;

err_disable_1v8:
	if (!FUNC0(rockchip->vpcie1v8))
		FUNC2(rockchip->vpcie1v8);
err_disable_3v3:
	if (!FUNC0(rockchip->vpcie3v3))
		FUNC2(rockchip->vpcie3v3);
err_disable_12v:
	if (!FUNC0(rockchip->vpcie12v))
		FUNC2(rockchip->vpcie12v);
err_out:
	return err;
}