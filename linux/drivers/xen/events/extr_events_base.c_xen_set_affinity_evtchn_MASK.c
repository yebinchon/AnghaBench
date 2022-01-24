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
struct irq_desc {int dummy; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct irq_data* FUNC1 (struct irq_desc*) ; 
 int FUNC2 (struct irq_data*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct irq_desc *desc, unsigned int tcpu)
{
	struct irq_data *d = FUNC1(desc);

	return FUNC2(d, FUNC0(tcpu), false);
}