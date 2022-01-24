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
struct xhci_hcd_mtk {void* dma_clk; void* mcu_clk; void* ref_clk; void* xhci_clk; void* sys_clk; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,char*) ; 

__attribute__((used)) static int FUNC6(struct xhci_hcd_mtk *mtk)
{
	struct device *dev = mtk->dev;

	mtk->sys_clk = FUNC4(dev, "sys_ck");
	if (FUNC0(mtk->sys_clk)) {
		FUNC3(dev, "fail to get sys_ck\n");
		return FUNC1(mtk->sys_clk);
	}

	mtk->xhci_clk = FUNC5(dev, "xhci_ck");
	if (FUNC0(mtk->xhci_clk))
		return FUNC1(mtk->xhci_clk);

	mtk->ref_clk = FUNC5(dev, "ref_ck");
	if (FUNC0(mtk->ref_clk))
		return FUNC1(mtk->ref_clk);

	mtk->mcu_clk = FUNC5(dev, "mcu_ck");
	if (FUNC0(mtk->mcu_clk))
		return FUNC1(mtk->mcu_clk);

	mtk->dma_clk = FUNC5(dev, "dma_ck");
	return FUNC2(mtk->dma_clk);
}