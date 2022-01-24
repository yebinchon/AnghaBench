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
struct esas2r_target {int /*<<< orphan*/  target_state; } ;
struct esas2r_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS_NOT_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_target*,struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct esas2r_adapter *a, struct esas2r_target *t)
{
	FUNC2();

	t->target_state = TS_NOT_PRESENT;

	FUNC1("remove id:%d", FUNC0(t, a));

	FUNC3();
}