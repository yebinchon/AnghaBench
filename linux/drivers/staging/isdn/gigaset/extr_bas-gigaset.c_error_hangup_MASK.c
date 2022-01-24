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
struct cardstate {int dummy; } ;
struct bc_state {int /*<<< orphan*/  at_state; struct cardstate* cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_HUP ; 
 int /*<<< orphan*/  FUNC0 (struct cardstate*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cardstate*) ; 

__attribute__((used)) static inline void FUNC2(struct bc_state *bcs)
{
	struct cardstate *cs = bcs->cs;

	FUNC0(cs, &bcs->at_state, EV_HUP, NULL, 0, NULL);
	FUNC1(cs);
}