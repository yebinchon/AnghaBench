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
typedef  int u32 ;
struct mobiveil_pcie {int /*<<< orphan*/  intx_mask_lock; } ;
struct irq_desc {int dummy; } ;
struct irq_data {int hwirq; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAB_INTP_AMBA_MISC_ENB ; 
 int PAB_INTX_START ; 
 int FUNC0 (struct mobiveil_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mobiveil_pcie*,int,int /*<<< orphan*/ ) ; 
 struct mobiveil_pcie* FUNC2 (struct irq_desc*) ; 
 struct irq_desc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct irq_data *data)
{
	struct irq_desc *desc = FUNC3(data->irq);
	struct mobiveil_pcie *pcie;
	unsigned long flags;
	u32 shifted_val, mask;

	pcie = FUNC2(desc);
	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
	FUNC4(&pcie->intx_mask_lock, flags);
	shifted_val = FUNC0(pcie, PAB_INTP_AMBA_MISC_ENB);
	shifted_val |= mask;
	FUNC1(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
	FUNC5(&pcie->intx_mask_lock, flags);
}