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
struct list_head {int dummy; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; int /*<<< orphan*/  bfa; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  int /*<<< orphan*/  bfa_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

irqreturn_t
FUNC7(int irq, void *dev_id)
{
	struct bfad_s	*bfad = dev_id;
	struct list_head	doneq;
	unsigned long	flags;
	bfa_boolean_t rc;

	FUNC5(&bfad->bfad_lock, flags);
	rc = FUNC3(&bfad->bfa);
	if (!rc) {
		FUNC6(&bfad->bfad_lock, flags);
		return IRQ_NONE;
	}

	FUNC0(&bfad->bfa, &doneq);
	FUNC6(&bfad->bfad_lock, flags);

	if (!FUNC4(&doneq)) {
		FUNC2(&bfad->bfa, &doneq);

		FUNC5(&bfad->bfad_lock, flags);
		FUNC1(&bfad->bfa, &doneq);
		FUNC6(&bfad->bfad_lock, flags);
	}

	return IRQ_HANDLED;

}