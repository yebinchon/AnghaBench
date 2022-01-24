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
struct ism_dev {int /*<<< orphan*/  lock; TYPE_1__* sba; int /*<<< orphan*/  smcd; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ e; scalar_t__* dmbe_mask; scalar_t__ s; int /*<<< orphan*/ * dmb_bits; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int ISM_DMB_BIT_OFFSET ; 
 size_t ISM_DMB_WORD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long*) ; 
 unsigned long FUNC2 (unsigned long*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ism_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct ism_dev *ism = data;
	unsigned long bit, end;
	unsigned long *bv;

	bv = (void *) &ism->sba->dmb_bits[ISM_DMB_WORD_OFFSET];
	end = sizeof(ism->sba->dmb_bits) * BITS_PER_BYTE - ISM_DMB_BIT_OFFSET;

	FUNC5(&ism->lock);
	ism->sba->s = 0;
	FUNC0();
	for (bit = 0;;) {
		bit = FUNC2(bv, end, bit);
		if (bit >= end)
			break;

		FUNC1(bit, bv);
		ism->sba->dmbe_mask[bit + ISM_DMB_BIT_OFFSET] = 0;
		FUNC0();
		FUNC4(ism->smcd, bit + ISM_DMB_BIT_OFFSET);
	}

	if (ism->sba->e) {
		ism->sba->e = 0;
		FUNC0();
		FUNC3(ism);
	}
	FUNC6(&ism->lock);
	return IRQ_HANDLED;
}