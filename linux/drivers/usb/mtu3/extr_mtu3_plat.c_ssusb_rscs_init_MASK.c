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
struct ssusb_mtk {int /*<<< orphan*/  vusb33; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ssusb_mtk*) ; 
 int FUNC4 (struct ssusb_mtk*) ; 
 int /*<<< orphan*/  FUNC5 (struct ssusb_mtk*) ; 
 int FUNC6 (struct ssusb_mtk*) ; 
 int FUNC7 (struct ssusb_mtk*) ; 

__attribute__((used)) static int FUNC8(struct ssusb_mtk *ssusb)
{
	int ret = 0;

	ret = FUNC2(ssusb->vusb33);
	if (ret) {
		FUNC0(ssusb->dev, "failed to enable vusb33\n");
		goto vusb33_err;
	}

	ret = FUNC4(ssusb);
	if (ret)
		goto clks_err;

	ret = FUNC6(ssusb);
	if (ret) {
		FUNC0(ssusb->dev, "failed to init phy\n");
		goto phy_init_err;
	}

	ret = FUNC7(ssusb);
	if (ret) {
		FUNC0(ssusb->dev, "failed to power on phy\n");
		goto phy_err;
	}

	return 0;

phy_err:
	FUNC5(ssusb);
phy_init_err:
	FUNC3(ssusb);
clks_err:
	FUNC1(ssusb->vusb33);
vusb33_err:
	return ret;
}