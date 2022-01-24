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
struct timer_list {int dummy; } ;
struct esas2r_adapter {int /*<<< orphan*/  flags2; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF2_TIMER_TICK ; 
 struct esas2r_adapter* a ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct esas2r_adapter*) ; 
 struct esas2r_adapter* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct esas2r_adapter *a = FUNC2(a, t, timer);

	FUNC3(AF2_TIMER_TICK, &a->flags2);

	FUNC1(a);

	FUNC0(a);
}