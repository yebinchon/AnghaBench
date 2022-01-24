#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  value; } ;
struct TYPE_5__ {TYPE_1__ n; } ;
struct var_t {TYPE_2__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  alive; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRIGGER ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct var_t* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* synth ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  thread_timer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	struct var_t *trigger_time;

	if (!synth->alive) {
		FUNC3();
		return;
	}
	trigger_time = FUNC2(TRIGGER);
	if (!FUNC4(&thread_timer))
		FUNC0(&thread_timer, jiffies +
			FUNC1(trigger_time->u.n.value));
}