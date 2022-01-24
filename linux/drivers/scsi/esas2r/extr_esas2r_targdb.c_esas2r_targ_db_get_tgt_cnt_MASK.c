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
typedef  scalar_t__ u16 ;
struct esas2r_target {scalar_t__ target_state; } ;
struct esas2r_adapter {int /*<<< orphan*/  mem_lock; struct esas2r_target* targetdb_end; struct esas2r_target* targetdb; } ;

/* Variables and functions */
 scalar_t__ TS_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

u16 FUNC2(struct esas2r_adapter *a)
{
	u16 devcnt = 0;
	struct esas2r_target *t;
	unsigned long flags;

	FUNC0(&a->mem_lock, flags);
	for (t = a->targetdb; t < a->targetdb_end; t++)
		if (t->target_state == TS_PRESENT)
			devcnt++;

	FUNC1(&a->mem_lock, flags);

	return devcnt;
}