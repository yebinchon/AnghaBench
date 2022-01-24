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
struct timer_list {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  poll_time_us; } ;
struct sccnxp_port {TYPE_1__ pdata; int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct sccnxp_port* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct sccnxp_port* s ; 
 int /*<<< orphan*/  FUNC2 (struct sccnxp_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct sccnxp_port *s = FUNC0(s, t, timer);
	unsigned long flags;

	FUNC3(&s->lock, flags);
	FUNC2(s);
	FUNC4(&s->lock, flags);

	FUNC1(&s->timer, jiffies + FUNC5(s->pdata.poll_time_us));
}