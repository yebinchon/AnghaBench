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
struct user_evtchn {int /*<<< orphan*/  port; } ;
struct per_user_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct per_user_data*,struct user_evtchn*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct user_evtchn*) ; 

__attribute__((used)) static void FUNC4(struct per_user_data *u,
				    struct user_evtchn *evtchn)
{
	int irq = FUNC2(evtchn->port);

	FUNC0(irq < 0);

	FUNC3(irq, evtchn);

	FUNC1(u, evtchn);
}