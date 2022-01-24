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
struct pcs_soc_data {int dummy; } ;
struct irq_data {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 struct pcs_soc_data* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcs_soc_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct irq_data *d)
{
	struct pcs_soc_data *pcs_soc = FUNC0(d);

	FUNC1(pcs_soc, d->irq, true);
}