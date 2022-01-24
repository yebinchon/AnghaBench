#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {size_t mask; int /*<<< orphan*/  txt; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int QMAN_ERRS_TO_DISABLE ; 
 int /*<<< orphan*/  REG_ECSR ; 
 int /*<<< orphan*/  REG_ERR_IER ; 
 int /*<<< orphan*/  REG_ERR_ISR ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,size_t,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* qman_hwerr_txts ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *ptr)
{
	u32 isr_val, ier_val, ecsr_val, isr_mask, i;
	struct device *dev = ptr;

	ier_val = FUNC4(REG_ERR_IER);
	isr_val = FUNC4(REG_ERR_ISR);
	ecsr_val = FUNC4(REG_ECSR);
	isr_mask = isr_val & ier_val;

	if (!isr_mask)
		return IRQ_NONE;

	for (i = 0; i < FUNC0(qman_hwerr_txts); i++) {
		if (qman_hwerr_txts[i].mask & isr_mask) {
			FUNC2(dev, "ErrInt: %s\n",
					    qman_hwerr_txts[i].txt);
			if (qman_hwerr_txts[i].mask & ecsr_val) {
				FUNC3(dev, isr_mask,
							  ecsr_val);
				/* Re-arm error capture registers */
				FUNC5(REG_ECSR, ecsr_val);
			}
			if (qman_hwerr_txts[i].mask & QMAN_ERRS_TO_DISABLE) {
				FUNC1(dev, "Disabling error 0x%x\n",
					qman_hwerr_txts[i].mask);
				ier_val &= ~qman_hwerr_txts[i].mask;
				FUNC5(REG_ERR_IER, ier_val);
			}
		}
	}
	FUNC5(REG_ERR_ISR, isr_val);

	return IRQ_HANDLED;
}