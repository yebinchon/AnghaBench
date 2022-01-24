#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct spmi_pmic_arb {TYPE_1__* spmic; } ;
struct irq_data {int /*<<< orphan*/  irq; int /*<<< orphan*/  hwirq; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPMI_CMD_EXT_WRITEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct spmi_pmic_arb* FUNC3 (struct irq_data*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int,void*,size_t) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d, u8 reg, void *buf,
			       size_t len)
{
	struct spmi_pmic_arb *pmic_arb = FUNC3(d);
	u8 sid = FUNC2(d->hwirq);
	u8 per = FUNC1(d->hwirq);

	if (FUNC4(pmic_arb->spmic, SPMI_CMD_EXT_WRITEL, sid,
			       (per << 8) + reg, buf, len))
		FUNC0(&pmic_arb->spmic->dev, "failed irqchip transaction on %x\n",
				    d->irq);
}