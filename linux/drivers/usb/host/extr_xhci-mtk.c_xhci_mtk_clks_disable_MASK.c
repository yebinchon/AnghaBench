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
struct xhci_hcd_mtk {int /*<<< orphan*/  ref_clk; int /*<<< orphan*/  sys_clk; int /*<<< orphan*/  xhci_clk; int /*<<< orphan*/  mcu_clk; int /*<<< orphan*/  dma_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct xhci_hcd_mtk *mtk)
{
	FUNC0(mtk->dma_clk);
	FUNC0(mtk->mcu_clk);
	FUNC0(mtk->xhci_clk);
	FUNC0(mtk->sys_clk);
	FUNC0(mtk->ref_clk);
}