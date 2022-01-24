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
struct seq_file {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_CLK_CTRL ; 
 int /*<<< orphan*/  DSI_CLK_TIMING ; 
 int /*<<< orphan*/  DSI_COMPLEXIO_CFG1 ; 
 int /*<<< orphan*/  DSI_COMPLEXIO_CFG2 ; 
 int /*<<< orphan*/  DSI_COMPLEXIO_IRQ_ENABLE ; 
 int /*<<< orphan*/  DSI_COMPLEXIO_IRQ_STATUS ; 
 int /*<<< orphan*/  DSI_CTRL ; 
 int /*<<< orphan*/  DSI_DSIPHY_CFG0 ; 
 int /*<<< orphan*/  DSI_DSIPHY_CFG1 ; 
 int /*<<< orphan*/  DSI_DSIPHY_CFG2 ; 
 int /*<<< orphan*/  DSI_DSIPHY_CFG5 ; 
 int /*<<< orphan*/  DSI_IRQENABLE ; 
 int /*<<< orphan*/  DSI_IRQSTATUS ; 
 int /*<<< orphan*/  DSI_PLL_CONFIGURATION1 ; 
 int /*<<< orphan*/  DSI_PLL_CONFIGURATION2 ; 
 int /*<<< orphan*/  DSI_PLL_CONTROL ; 
 int /*<<< orphan*/  DSI_PLL_GO ; 
 int /*<<< orphan*/  DSI_PLL_STATUS ; 
 int /*<<< orphan*/  DSI_REVISION ; 
 int /*<<< orphan*/  DSI_RX_FIFO_VC_FULLNESS ; 
 int /*<<< orphan*/  DSI_RX_FIFO_VC_SIZE ; 
 int /*<<< orphan*/  DSI_STOPCLK_TIMING ; 
 int /*<<< orphan*/  DSI_SYSCONFIG ; 
 int /*<<< orphan*/  DSI_SYSSTATUS ; 
 int /*<<< orphan*/  DSI_TIMING1 ; 
 int /*<<< orphan*/  DSI_TIMING2 ; 
 int /*<<< orphan*/  DSI_TX_FIFO_VC_EMPTINESS ; 
 int /*<<< orphan*/  DSI_TX_FIFO_VC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  DSI_VM_TIMING1 ; 
 int /*<<< orphan*/  DSI_VM_TIMING2 ; 
 int /*<<< orphan*/  DSI_VM_TIMING3 ; 
 int /*<<< orphan*/  DSI_VM_TIMING4 ; 
 int /*<<< orphan*/  DSI_VM_TIMING5 ; 
 int /*<<< orphan*/  DSI_VM_TIMING6 ; 
 int /*<<< orphan*/  DSI_VM_TIMING7 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*) ; 
 scalar_t__ FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 

__attribute__((used)) static void FUNC12(struct platform_device *dsidev,
		struct seq_file *s)
{
#define DUMPREG(r) seq_printf(s, "%-35s %08x\n", #r, dsi_read_reg(dsidev, r))

	if (FUNC10(dsidev))
		return;
	FUNC9(dsidev);

	DUMPREG(DSI_REVISION);
	DUMPREG(DSI_SYSCONFIG);
	DUMPREG(DSI_SYSSTATUS);
	DUMPREG(DSI_IRQSTATUS);
	DUMPREG(DSI_IRQENABLE);
	DUMPREG(DSI_CTRL);
	DUMPREG(DSI_COMPLEXIO_CFG1);
	DUMPREG(DSI_COMPLEXIO_IRQ_STATUS);
	DUMPREG(DSI_COMPLEXIO_IRQ_ENABLE);
	DUMPREG(DSI_CLK_CTRL);
	DUMPREG(DSI_TIMING1);
	DUMPREG(DSI_TIMING2);
	DUMPREG(DSI_VM_TIMING1);
	DUMPREG(DSI_VM_TIMING2);
	DUMPREG(DSI_VM_TIMING3);
	DUMPREG(DSI_CLK_TIMING);
	DUMPREG(DSI_TX_FIFO_VC_SIZE);
	DUMPREG(DSI_RX_FIFO_VC_SIZE);
	DUMPREG(DSI_COMPLEXIO_CFG2);
	DUMPREG(DSI_RX_FIFO_VC_FULLNESS);
	DUMPREG(DSI_VM_TIMING4);
	DUMPREG(DSI_TX_FIFO_VC_EMPTINESS);
	DUMPREG(DSI_VM_TIMING5);
	DUMPREG(DSI_VM_TIMING6);
	DUMPREG(DSI_VM_TIMING7);
	DUMPREG(DSI_STOPCLK_TIMING);

	DUMPREG(FUNC0(0));
	DUMPREG(FUNC6(0));
	DUMPREG(FUNC3(0));
	DUMPREG(FUNC4(0));
	DUMPREG(FUNC5(0));
	DUMPREG(FUNC2(0));
	DUMPREG(FUNC1(0));

	DUMPREG(FUNC0(1));
	DUMPREG(FUNC6(1));
	DUMPREG(FUNC3(1));
	DUMPREG(FUNC4(1));
	DUMPREG(FUNC5(1));
	DUMPREG(FUNC2(1));
	DUMPREG(FUNC1(1));

	DUMPREG(FUNC0(2));
	DUMPREG(FUNC6(2));
	DUMPREG(FUNC3(2));
	DUMPREG(FUNC4(2));
	DUMPREG(FUNC5(2));
	DUMPREG(FUNC2(2));
	DUMPREG(FUNC1(2));

	DUMPREG(FUNC0(3));
	DUMPREG(FUNC6(3));
	DUMPREG(FUNC3(3));
	DUMPREG(FUNC4(3));
	DUMPREG(FUNC5(3));
	DUMPREG(FUNC2(3));
	DUMPREG(FUNC1(3));

	DUMPREG(DSI_DSIPHY_CFG0);
	DUMPREG(DSI_DSIPHY_CFG1);
	DUMPREG(DSI_DSIPHY_CFG2);
	DUMPREG(DSI_DSIPHY_CFG5);

	DUMPREG(DSI_PLL_CONTROL);
	DUMPREG(DSI_PLL_STATUS);
	DUMPREG(DSI_PLL_GO);
	DUMPREG(DSI_PLL_CONFIGURATION1);
	DUMPREG(DSI_PLL_CONFIGURATION2);

	FUNC8(dsidev);
	FUNC11(dsidev);
#undef DUMPREG
}