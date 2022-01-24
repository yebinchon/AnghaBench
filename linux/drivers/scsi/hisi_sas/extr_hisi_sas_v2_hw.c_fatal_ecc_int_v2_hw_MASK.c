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
struct hisi_hba {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SAS_ECC_INTR ; 
 int /*<<< orphan*/  SAS_ECC_INTR_MSK ; 
 int FUNC0 (struct hisi_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_hba*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_hba*,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq_no, void *p)
{
	struct hisi_hba *hisi_hba = p;
	u32 irq_value, irq_msk;

	irq_msk = FUNC0(hisi_hba, SAS_ECC_INTR_MSK);
	FUNC1(hisi_hba, SAS_ECC_INTR_MSK, irq_msk | 0xffffffff);

	irq_value = FUNC0(hisi_hba, SAS_ECC_INTR);
	if (irq_value) {
		FUNC3(hisi_hba, irq_value);
		FUNC2(hisi_hba, irq_value);
	}

	FUNC1(hisi_hba, SAS_ECC_INTR, irq_value);
	FUNC1(hisi_hba, SAS_ECC_INTR_MSK, irq_msk);

	return IRQ_HANDLED;
}