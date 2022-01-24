#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct subchannel {int dummy; } ;
struct TYPE_5__ {scalar_t__ expires; } ;
struct eadm_private {TYPE_1__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct eadm_private* FUNC2 (struct subchannel*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct subchannel *sch, int expires)
{
	struct eadm_private *private = FUNC2(sch);

	if (expires == 0) {
		FUNC1(&private->timer);
		return;
	}
	if (FUNC4(&private->timer)) {
		if (FUNC3(&private->timer, jiffies + expires))
			return;
	}
	private->timer.expires = jiffies + expires;
	FUNC0(&private->timer);
}