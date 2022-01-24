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
struct qtnf_pcie_pearl_state {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  pcie_reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct qtnf_pcie_pearl_state *ps)
{
	unsigned long flags;

	FUNC1(&ps->irq_lock, flags);
	FUNC3(0x0, FUNC0(ps->pcie_reg_base));
	FUNC2(&ps->irq_lock, flags);
}