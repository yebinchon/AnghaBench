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
typedef  scalar_t__ u8 ;
struct esas2r_target {scalar_t__ buffered_target_state; scalar_t__ target_state; } ;
struct esas2r_adapter {int /*<<< orphan*/  mem_lock; struct esas2r_target* targetdb_end; struct esas2r_target* targetdb; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_DISC_PENDING ; 
 scalar_t__ TS_INVALID ; 
 scalar_t__ FUNC0 (struct esas2r_target*,struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct esas2r_adapter *a)
{
	struct esas2r_target *t;
	unsigned long flags;

	FUNC3();

	if (FUNC7(AF_DISC_PENDING, &a->flags)) {
		FUNC4();
		return;
	}

	for (t = a->targetdb; t < a->targetdb_end; t++) {
		u8 state = TS_INVALID;

		FUNC5(&a->mem_lock, flags);
		if (t->buffered_target_state != t->target_state)
			state = t->buffered_target_state = t->target_state;

		FUNC6(&a->mem_lock, flags);
		if (state != TS_INVALID) {
			FUNC2("targ_db_report_changes:%d",
				     FUNC0(
					     t,
					     a));
			FUNC2("state:%d", state);

			FUNC1(a,
						    FUNC0(t,
								       a),
						    state);
		}
	}

	FUNC4();
}