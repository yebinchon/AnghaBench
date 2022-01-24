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
struct tango_pcie {int base; int /*<<< orphan*/  used_msi_lock; } ;
struct irq_data {int hwirq; struct tango_pcie* chip_data; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int SMP8759_ENABLE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d, bool unmask)
{
	unsigned long flags;
	struct tango_pcie *pcie = d->chip_data;
	u32 offset = (d->hwirq / 32) * 4;
	u32 bit = FUNC0(d->hwirq % 32);
	u32 val;

	FUNC2(&pcie->used_msi_lock, flags);
	val = FUNC1(pcie->base + SMP8759_ENABLE + offset);
	val = unmask ? val | bit : val & ~bit;
	FUNC4(val, pcie->base + SMP8759_ENABLE + offset);
	FUNC3(&pcie->used_msi_lock, flags);
}