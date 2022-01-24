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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct arche_apb_ctrl_drvdata {scalar_t__ state; int /*<<< orphan*/  resetn; scalar_t__ clk_en; int /*<<< orphan*/  vio; int /*<<< orphan*/  vcore; scalar_t__ spi_en; scalar_t__ init_disabled; } ;

/* Variables and functions */
 scalar_t__ ARCHE_PLATFORM_STATE_ACTIVE ; 
 scalar_t__ ARCHE_PLATFORM_STATE_FW_FLASHING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 struct arche_apb_ctrl_drvdata* FUNC7 (struct platform_device*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct arche_apb_ctrl_drvdata *apb = FUNC7(pdev);
	int ret;

	if (apb->init_disabled ||
	    apb->state == ARCHE_PLATFORM_STATE_ACTIVE)
		return 0;

	/* Hold APB in reset state */
	FUNC2(apb->resetn);

	if (apb->state == ARCHE_PLATFORM_STATE_FW_FLASHING && apb->spi_en)
		FUNC5(dev, apb->spi_en);

	/* Enable power to APB */
	if (!FUNC0(apb->vcore)) {
		ret = FUNC8(apb->vcore);
		if (ret) {
			FUNC4(dev, "failed to enable core regulator\n");
			return ret;
		}
	}

	if (!FUNC0(apb->vio)) {
		ret = FUNC8(apb->vio);
		if (ret) {
			FUNC4(dev, "failed to enable IO regulator\n");
			return ret;
		}
	}

	FUNC1(dev);

	/* On DB3 clock was not mandatory */
	if (apb->clk_en)
		FUNC6(apb->clk_en, 1);

	FUNC9(100, 200);

	/* deassert reset to APB : Active-low signal */
	FUNC3(apb->resetn);

	apb->state = ARCHE_PLATFORM_STATE_ACTIVE;

	return 0;
}