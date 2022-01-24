#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct mobiveil_pcie {int apio_wins; int /*<<< orphan*/  ob_wins_configured; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AXI_WINDOW_ALIGN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int WIN_ENABLE_SHIFT ; 
 int WIN_SIZE_MASK ; 
 int WIN_TYPE_MASK ; 
 int WIN_TYPE_SHIFT ; 
 int FUNC6 (struct mobiveil_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mobiveil_pcie*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct mobiveil_pcie *pcie, int win_num,
			       u64 cpu_addr, u64 pci_addr, u32 type, u64 size)
{
	u32 value;
	u64 size64 = ~(size - 1);

	if (win_num >= pcie->apio_wins) {
		FUNC8(&pcie->pdev->dev,
			"ERROR: max outbound windows reached !\n");
		return;
	}

	/*
	 * program Enable Bit to 1, Type Bit to (00) base 2, AXI Window Size Bit
	 * to 4 KB in PAB_AXI_AMAP_CTRL register
	 */
	value = FUNC6(pcie, FUNC1(win_num));
	value &= ~(WIN_TYPE_MASK << WIN_TYPE_SHIFT | WIN_SIZE_MASK);
	value |= 1 << WIN_ENABLE_SHIFT | type << WIN_TYPE_SHIFT |
		 (FUNC9(size64) & WIN_SIZE_MASK);
	FUNC7(pcie, value, FUNC1(win_num));

	FUNC7(pcie, FUNC10(size64), FUNC5(win_num));

	/*
	 * program AXI window base with appropriate value in
	 * PAB_AXI_AMAP_AXI_WIN0 register
	 */
	FUNC7(pcie, FUNC9(cpu_addr) & (~AXI_WINDOW_ALIGN_MASK),
		   FUNC0(win_num));
	FUNC7(pcie, FUNC10(cpu_addr),
		   FUNC4(win_num));

	FUNC7(pcie, FUNC9(pci_addr),
		   FUNC3(win_num));
	FUNC7(pcie, FUNC10(pci_addr),
		   FUNC2(win_num));

	pcie->ob_wins_configured++;
}