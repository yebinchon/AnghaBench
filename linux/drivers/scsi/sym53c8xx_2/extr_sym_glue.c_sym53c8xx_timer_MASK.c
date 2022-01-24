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
struct timer_list {int dummy; } ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct sym_hcb {TYPE_2__ s; } ;
struct TYPE_6__ {int /*<<< orphan*/  timer; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 struct sym_hcb* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct sym_hcb* np ; 
 TYPE_3__ s ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct sym_hcb*) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct sym_hcb *np = FUNC0(np, t, s.timer);
	unsigned long flags;

	FUNC1(np->s.host->host_lock, flags);
	FUNC3(np);
	FUNC2(np->s.host->host_lock, flags);
}