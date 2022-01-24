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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bd_num; } ;
struct qtnf_pcie_pearl_state {int /*<<< orphan*/  pcie_reg_base; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  HHBM_64BIT ; 
 int /*<<< orphan*/  HHBM_CONFIG_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct qtnf_pcie_pearl_state *ps)
{
	u32 val;

	val = FUNC2(FUNC0(ps->pcie_reg_base));
	val |= HHBM_CONFIG_SOFT_RESET;
	FUNC4(val, FUNC0(ps->pcie_reg_base));
	FUNC3(50, 100);
	val &= ~HHBM_CONFIG_SOFT_RESET;
#ifdef CONFIG_ARCH_DMA_ADDR_T_64BIT
	val |= HHBM_64BIT;
#endif
	FUNC4(val, FUNC0(ps->pcie_reg_base));
	FUNC4(ps->base.rx_bd_num, FUNC1(ps->pcie_reg_base));

	return 0;
}