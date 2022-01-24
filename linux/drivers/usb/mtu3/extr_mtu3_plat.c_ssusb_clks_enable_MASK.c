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
struct ssusb_mtk {int /*<<< orphan*/  sys_clk; int /*<<< orphan*/  ref_clk; int /*<<< orphan*/  mcu_clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct ssusb_mtk *ssusb)
{
	int ret;

	ret = FUNC1(ssusb->sys_clk);
	if (ret) {
		FUNC2(ssusb->dev, "failed to enable sys_clk\n");
		goto sys_clk_err;
	}

	ret = FUNC1(ssusb->ref_clk);
	if (ret) {
		FUNC2(ssusb->dev, "failed to enable ref_clk\n");
		goto ref_clk_err;
	}

	ret = FUNC1(ssusb->mcu_clk);
	if (ret) {
		FUNC2(ssusb->dev, "failed to enable mcu_clk\n");
		goto mcu_clk_err;
	}

	ret = FUNC1(ssusb->dma_clk);
	if (ret) {
		FUNC2(ssusb->dev, "failed to enable dma_clk\n");
		goto dma_clk_err;
	}

	return 0;

dma_clk_err:
	FUNC0(ssusb->mcu_clk);
mcu_clk_err:
	FUNC0(ssusb->ref_clk);
ref_clk_err:
	FUNC0(ssusb->sys_clk);
sys_clk_err:
	return ret;
}