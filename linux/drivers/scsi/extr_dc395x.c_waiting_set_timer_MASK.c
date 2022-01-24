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
struct TYPE_3__ {int expires; } ;
struct AdapterCtlBlk {int last_reset; TYPE_1__ waiting_timer; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int jiffies ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct AdapterCtlBlk *acb, unsigned long to)
{
	if (FUNC2(&acb->waiting_timer))
		return;
	if (FUNC1(jiffies + to, acb->last_reset - HZ / 2))
		acb->waiting_timer.expires =
		    acb->last_reset - HZ / 2 + 1;
	else
		acb->waiting_timer.expires = jiffies + to + 1;
	FUNC0(&acb->waiting_timer);
}