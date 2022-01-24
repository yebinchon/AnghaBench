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
struct cardstate {scalar_t__ mstate; int isdn_up; int /*<<< orphan*/  waitqueue; scalar_t__ waiting; } ;

/* Variables and functions */
 int /*<<< orphan*/  MS_INIT ; 
 scalar_t__ MS_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC1 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC2 (struct cardstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct cardstate *cs)
{
	FUNC0(cs);

	if (cs->mstate != MS_LOCKED)
		FUNC2(cs, MS_INIT);

	cs->isdn_up = 1;
	FUNC1(cs);

	cs->waiting = 0;
	FUNC3(&cs->waitqueue);
}