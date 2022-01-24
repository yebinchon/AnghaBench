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
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int) ; 

__attribute__((used)) static inline void FUNC3(unsigned long pend,
						struct irq_domain *domain)
{
	unsigned int irq;

	while (pend) {
		irq = FUNC0(pend) - 1;
		FUNC1(FUNC2(domain, irq));
		pend &= ~(1 << irq);
	}
}