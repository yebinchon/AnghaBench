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
typedef  int u8 ;
typedef  int u32 ;
struct mobiveil_pcie {scalar_t__ csr_axi_slave_base; } ;

/* Variables and functions */
 scalar_t__ PAB_CTRL ; 
 int PAGE_SEL_MASK ; 
 int PAGE_SEL_SHIFT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mobiveil_pcie *pcie, u8 pg_idx)
{
	u32 val;

	val = FUNC0(pcie->csr_axi_slave_base + PAB_CTRL);
	val &= ~(PAGE_SEL_MASK << PAGE_SEL_SHIFT);
	val |= (pg_idx & PAGE_SEL_MASK) << PAGE_SEL_SHIFT;

	FUNC1(val, pcie->csr_axi_slave_base + PAB_CTRL);
}