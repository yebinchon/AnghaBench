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
struct esas2r_target {scalar_t__ target_state; } ;
struct esas2r_adapter {int /*<<< orphan*/  mem_lock; struct esas2r_target* targetdb_end; struct esas2r_target* targetdb; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS_NOT_PRESENT ; 
 scalar_t__ TS_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*,struct esas2r_target*) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_target*,struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct esas2r_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct esas2r_adapter *a, bool notify)
{
	struct esas2r_target *t;
	unsigned long flags;

	for (t = a->targetdb; t < a->targetdb_end; t++) {
		if (t->target_state != TS_PRESENT)
			continue;

		FUNC4(&a->mem_lock, flags);
		FUNC0(a, t);
		FUNC5(&a->mem_lock, flags);

		if (notify) {
			FUNC3("remove id:%d", FUNC1(t,
									a));
			FUNC2(a, FUNC1(t,
									  a),
						    TS_NOT_PRESENT);
		}
	}
}