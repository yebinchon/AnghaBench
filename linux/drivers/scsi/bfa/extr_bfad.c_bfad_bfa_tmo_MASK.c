#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  timer_mod; } ;
struct bfad_s {int /*<<< orphan*/  hal_tmo; int /*<<< orphan*/  bfad_lock; TYPE_1__ bfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_TIMER_FREQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct bfad_s* bfad ; 
 struct bfad_s* FUNC4 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hal_tmo ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC10(struct timer_list *t)
{
	struct bfad_s	      *bfad = FUNC4(bfad, t, hal_tmo);
	unsigned long	flags;
	struct list_head	       doneq;

	FUNC8(&bfad->bfad_lock, flags);

	FUNC3(&bfad->bfa.timer_mod);

	FUNC0(&bfad->bfa, &doneq);
	FUNC9(&bfad->bfad_lock, flags);

	if (!FUNC5(&doneq)) {
		FUNC2(&bfad->bfa, &doneq);
		FUNC8(&bfad->bfad_lock, flags);
		FUNC1(&bfad->bfa, &doneq);
		FUNC9(&bfad->bfad_lock, flags);
	}

	FUNC6(&bfad->hal_tmo,
		  jiffies + FUNC7(BFA_TIMER_FREQ));
}