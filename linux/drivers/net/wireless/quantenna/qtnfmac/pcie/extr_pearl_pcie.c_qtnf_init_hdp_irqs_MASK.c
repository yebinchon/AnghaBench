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
struct qtnf_pcie_pearl_state {int pcie_irq_mask; int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int PCIE_HDP_INT_RX_BITS ; 
 int PCIE_HDP_INT_TX_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(struct qtnf_pcie_pearl_state *ps)
{
	unsigned long flags;

	FUNC0(&ps->irq_lock, flags);
	ps->pcie_irq_mask = (PCIE_HDP_INT_RX_BITS | PCIE_HDP_INT_TX_BITS);
	FUNC1(&ps->irq_lock, flags);
}