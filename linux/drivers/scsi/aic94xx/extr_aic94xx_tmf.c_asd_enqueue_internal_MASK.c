#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void (* function ) (struct timer_list*) ;scalar_t__ expires; } ;
struct asd_ascb {void (* tasklet_complete ) (struct asd_ascb*,struct done_list_struct*) ;int uldd_timer; TYPE_1__ timer; int /*<<< orphan*/  ha; } ;

/* Variables and functions */
 scalar_t__ AIC94XX_SCB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct asd_ascb*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct asd_ascb *ascb,
		void (*tasklet_complete)(struct asd_ascb *,
					 struct done_list_struct *),
				void (*timed_out)(struct timer_list *t))
{
	int res;

	ascb->tasklet_complete = tasklet_complete;
	ascb->uldd_timer = 1;

	ascb->timer.function = timed_out;
	ascb->timer.expires = jiffies + AIC94XX_SCB_TIMEOUT;

	FUNC0(&ascb->timer);

	res = FUNC1(ascb->ha, ascb, 1);
	if (FUNC3(res))
		FUNC2(&ascb->timer);
	return res;
}