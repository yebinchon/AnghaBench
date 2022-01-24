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
struct mobiveil_pcie {int ppio_wins; int /*<<< orphan*/  ib_wins_configured; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AMAP_CTRL_EN_SHIFT ; 
 int AMAP_CTRL_TYPE_MASK ; 
 int AMAP_CTRL_TYPE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int WIN_SIZE_MASK ; 
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

	if (win_num >= pcie->ppio_wins) {
		FUNC8(&pcie->pdev->dev,
			"ERROR: max inbound windows reached !\n");
		return;
	}

	value = FUNC6(pcie, FUNC3(win_num));
	value &= ~(AMAP_CTRL_TYPE_MASK << AMAP_CTRL_TYPE_SHIFT | WIN_SIZE_MASK);
	value |= type << AMAP_CTRL_TYPE_SHIFT | 1 << AMAP_CTRL_EN_SHIFT |
		 (FUNC9(size64) & WIN_SIZE_MASK);
	FUNC7(pcie, value, FUNC3(win_num));

	FUNC7(pcie, FUNC10(size64),
		   FUNC1(win_num));

	FUNC7(pcie, FUNC9(cpu_addr),
		   FUNC2(win_num));
	FUNC7(pcie, FUNC10(cpu_addr),
		   FUNC0(win_num));

	FUNC7(pcie, FUNC9(pci_addr),
		   FUNC5(win_num));
	FUNC7(pcie, FUNC10(pci_addr),
		   FUNC4(win_num));

	pcie->ib_wins_configured++;
}