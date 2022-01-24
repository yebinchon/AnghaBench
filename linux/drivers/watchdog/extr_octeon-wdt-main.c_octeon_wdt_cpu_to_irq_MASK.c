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
struct irq_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCTEON_FEATURE_CIU3 ; 
 unsigned int OCTEON_IRQ_WDOG0 ; 
 int WD_BLOCK_NUMBER ; 
 unsigned int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct irq_domain*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(int cpu)
{
	unsigned int coreid;
	int node;
	int irq;

	coreid = FUNC0(cpu);
	node = FUNC1(cpu);

	if (FUNC3(OCTEON_FEATURE_CIU3)) {
		struct irq_domain *domain;
		int hwirq;

		domain = FUNC4(node,
						     WD_BLOCK_NUMBER);
		hwirq = WD_BLOCK_NUMBER << 12 | 0x200 | coreid;
		irq = FUNC2(domain, hwirq);
	} else {
		irq = OCTEON_IRQ_WDOG0 + coreid;
	}
	return irq;
}