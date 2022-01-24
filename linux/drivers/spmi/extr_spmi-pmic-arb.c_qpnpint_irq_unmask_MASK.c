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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct spmi_pmic_arb {struct pmic_arb_ver_ops* ver_ops; } ;
struct pmic_arb_ver_ops {int /*<<< orphan*/  (* acc_enable ) (struct spmi_pmic_arb*,int /*<<< orphan*/ ) ;} ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  QPNPINT_REG_EN_SET ; 
 int /*<<< orphan*/  QPNPINT_REG_LATCHED_CLR ; 
 int /*<<< orphan*/  SPMI_PIC_ACC_ENABLE_BIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct spmi_pmic_arb* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_data*,int /*<<< orphan*/ ,int**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct spmi_pmic_arb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct irq_data *d)
{
	struct spmi_pmic_arb *pmic_arb = FUNC3(d);
	const struct pmic_arb_ver_ops *ver_ops = pmic_arb->ver_ops;
	u8 irq = FUNC2(d->hwirq);
	u16 apid = FUNC1(d->hwirq);
	u8 buf[2];

	FUNC7(SPMI_PIC_ACC_ENABLE_BIT,
			ver_ops->acc_enable(pmic_arb, apid));

	FUNC4(d, QPNPINT_REG_EN_SET, &buf[0], 1);
	if (!(buf[0] & FUNC0(irq))) {
		/*
		 * Since the interrupt is currently disabled, write to both the
		 * LATCHED_CLR and EN_SET registers so that a spurious interrupt
		 * cannot be triggered when the interrupt is enabled
		 */
		buf[0] = FUNC0(irq);
		buf[1] = FUNC0(irq);
		FUNC5(d, QPNPINT_REG_LATCHED_CLR, &buf, 2);
	}
}