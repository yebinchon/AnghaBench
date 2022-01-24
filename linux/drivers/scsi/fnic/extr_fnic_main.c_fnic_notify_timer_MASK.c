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
struct fnic {int /*<<< orphan*/  notify_timer; } ;

/* Variables and functions */
 scalar_t__ FNIC_NOTIFY_TIMER_PERIOD ; 
 struct fnic* fnic ; 
 int /*<<< orphan*/  FUNC0 (struct fnic*) ; 
 struct fnic* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  notify_timer ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct fnic *fnic = FUNC1(fnic, t, notify_timer);

	FUNC0(fnic);
	FUNC2(&fnic->notify_timer,
		  FUNC3(jiffies + FNIC_NOTIFY_TIMER_PERIOD));
}