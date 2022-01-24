#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct spmi_pmic_arb {scalar_t__ ee; TYPE_2__* apid_data; TYPE_1__* spmic; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct TYPE_4__ {scalar_t__ irq_ee; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,size_t,size_t,scalar_t__,scalar_t__) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 struct spmi_pmic_arb* FUNC5 (struct irq_data*) ; 

__attribute__((used)) static int FUNC6(struct irq_domain *domain,
				       struct irq_data *d, bool reserve)
{
	struct spmi_pmic_arb *pmic_arb = FUNC5(d);
	u16 periph = FUNC3(d->hwirq);
	u16 apid = FUNC1(d->hwirq);
	u16 sid = FUNC4(d->hwirq);
	u16 irq = FUNC2(d->hwirq);

	if (pmic_arb->apid_data[apid].irq_ee != pmic_arb->ee) {
		FUNC0(&pmic_arb->spmic->dev, "failed to xlate sid = %#x, periph = %#x, irq = %u: ee=%u but owner=%u\n",
			sid, periph, irq, pmic_arb->ee,
			pmic_arb->apid_data[apid].irq_ee);
		return -ENODEV;
	}

	return 0;
}