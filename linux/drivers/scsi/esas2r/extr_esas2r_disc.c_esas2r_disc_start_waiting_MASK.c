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
struct TYPE_2__ {scalar_t__ disc_evt; } ;
struct esas2r_adapter {int /*<<< orphan*/  mem_lock; TYPE_1__ disc_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct esas2r_adapter *a)
{
	unsigned long flags;

	FUNC1(&a->mem_lock, flags);

	if (a->disc_ctx.disc_evt)
		FUNC0(a);

	FUNC2(&a->mem_lock, flags);
}