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
struct nwl_pcie {int /*<<< orphan*/  leg_mask_lock; } ;
struct irq_desc {int dummy; } ;
struct irq_data {int hwirq; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGF_LEG_MASK ; 
 struct nwl_pcie* FUNC0 (struct irq_desc*) ; 
 struct irq_desc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nwl_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nwl_pcie*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct irq_data *data)
{
	struct irq_desc *desc = FUNC1(data->irq);
	struct nwl_pcie *pcie;
	unsigned long flags;
	u32 mask;
	u32 val;

	pcie = FUNC0(desc);
	mask = 1 << (data->hwirq - 1);
	FUNC4(&pcie->leg_mask_lock, flags);
	val = FUNC2(pcie, MSGF_LEG_MASK);
	FUNC3(pcie, (val | mask), MSGF_LEG_MASK);
	FUNC5(&pcie->leg_mask_lock, flags);
}