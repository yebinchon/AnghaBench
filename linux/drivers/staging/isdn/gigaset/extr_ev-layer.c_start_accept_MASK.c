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
struct cardstate {int commands_pending; int /*<<< orphan*/  dev; } ;
struct bc_state {int proto2; int channel; int /*<<< orphan*/ ** commands; } ;
struct at_state_t {int /*<<< orphan*/  pending_commands; struct cardstate* cs; struct bc_state* bcs; } ;

/* Variables and functions */
 size_t AT_ISO ; 
 int AT_NUM ; 
 size_t AT_PROTO ; 
 int /*<<< orphan*/  DEBUG_EVENT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PC_ACCEPT ; 
 int /*<<< orphan*/  PC_HUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int) ; 

__attribute__((used)) static void FUNC5(struct at_state_t *at_state)
{
	struct cardstate *cs = at_state->cs;
	struct bc_state *bcs = at_state->bcs;
	int i;

	for (i = 0; i < AT_NUM; ++i) {
		FUNC2(bcs->commands[i]);
		bcs->commands[i] = NULL;
	}

	bcs->commands[AT_PROTO] = FUNC3(9, GFP_ATOMIC);
	bcs->commands[AT_ISO] = FUNC3(9, GFP_ATOMIC);
	if (!bcs->commands[AT_PROTO] || !bcs->commands[AT_ISO]) {
		FUNC0(at_state->cs->dev, "out of memory\n");
		/* error reset */
		at_state->pending_commands |= PC_HUP;
		FUNC1(DEBUG_EVENT, "Scheduling PC_HUP");
		cs->commands_pending = 1;
		return;
	}

	FUNC4(bcs->commands[AT_PROTO], 9, "^SBPR=%u\r", bcs->proto2);
	FUNC4(bcs->commands[AT_ISO], 9, "^SISO=%u\r", bcs->channel + 1);

	at_state->pending_commands |= PC_ACCEPT;
	FUNC1(DEBUG_EVENT, "Scheduling PC_ACCEPT");
	cs->commands_pending = 1;
}