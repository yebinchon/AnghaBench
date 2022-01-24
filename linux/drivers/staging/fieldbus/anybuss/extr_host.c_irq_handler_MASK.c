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
struct anybuss_host {int /*<<< orphan*/  wq; int /*<<< orphan*/  card_boot; int /*<<< orphan*/  ind_ab; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct anybuss_host *cd = data;
	int ind_ab;

	/*
	 * irq handler needs exclusive access to the IND_AB register,
	 * because the act of reading the register acks the interrupt.
	 *
	 * store the register value in cd->ind_ab (an atomic_t), so that the
	 * queue thread is able to read it without causing an interrupt ack
	 * side-effect (and without spuriously acking an interrupt).
	 */
	ind_ab = FUNC2(cd->regmap);
	if (ind_ab < 0)
		return IRQ_NONE;
	FUNC0(&cd->ind_ab, ind_ab);
	FUNC1(&cd->card_boot);
	FUNC3(&cd->wq);
	return IRQ_HANDLED;
}