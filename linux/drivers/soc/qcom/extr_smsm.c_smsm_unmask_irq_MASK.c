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
typedef  int /*<<< orphan*/  u32 ;
struct smsm_entry {scalar_t__ subscription; int /*<<< orphan*/  irq_enabled; struct qcom_smsm* smsm; } ;
struct qcom_smsm {scalar_t__ local_host; } ;
struct irq_data {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct smsm_entry* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct irq_data *irqd)
{
	struct smsm_entry *entry = FUNC1(irqd);
	irq_hw_number_t irq = FUNC2(irqd);
	struct qcom_smsm *smsm = entry->smsm;
	u32 val;

	FUNC4(irq, entry->irq_enabled);

	if (entry->subscription) {
		val = FUNC3(entry->subscription + smsm->local_host);
		val |= FUNC0(irq);
		FUNC5(val, entry->subscription + smsm->local_host);
	}
}