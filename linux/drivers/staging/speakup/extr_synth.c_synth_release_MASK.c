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
struct var_t {scalar_t__ var_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  spinlock; } ;
struct TYPE_4__ {scalar_t__ name; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* release ) () ;struct var_t* vars; TYPE_1__ attributes; scalar_t__ alive; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ MAXVARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ speakup_info ; 
 int /*<<< orphan*/  speakup_kobj ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* synth ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  thread_timer ; 

void FUNC7(void)
{
	struct var_t *var;
	unsigned long flags;

	if (!synth)
		return;
	FUNC3(&speakup_info.spinlock, flags);
	FUNC1("releasing synth %s\n", synth->name);
	synth->alive = 0;
	FUNC0(&thread_timer);
	FUNC4(&speakup_info.spinlock, flags);
	if (synth->attributes.name)
		FUNC6(speakup_kobj, &synth->attributes);
	for (var = synth->vars; var->var_id != MAXVARS; var++)
		FUNC2(var->var_id);
	synth->release();
	synth = NULL;
}