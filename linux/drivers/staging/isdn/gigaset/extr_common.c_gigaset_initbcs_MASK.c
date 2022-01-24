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
struct cardstate {TYPE_1__* ops; int /*<<< orphan*/  ignoreframes; } ;
struct bc_state {int channel; int use_count; scalar_t__ apconnstate; int /*<<< orphan*/ * ap; int /*<<< orphan*/  aplock; int /*<<< orphan*/ ** commands; int /*<<< orphan*/  ignore; scalar_t__ busy; scalar_t__ chstate; struct cardstate* cs; scalar_t__ inputstate; int /*<<< orphan*/  rx_fcs; int /*<<< orphan*/ * rx_skb; scalar_t__ rx_bufsize; scalar_t__ emptycount; int /*<<< orphan*/  at_state; scalar_t__ trans_up; scalar_t__ trans_down; scalar_t__ corrupted; int /*<<< orphan*/  squeue; int /*<<< orphan*/ * tx_skb; } ;
struct TYPE_2__ {int (* initbcshw ) (struct bc_state*) ;} ;

/* Variables and functions */
 int AT_NUM ; 
 int /*<<< orphan*/  DEBUG_INIT ; 
 int /*<<< orphan*/  PPP_INITFCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bc_state*,struct cardstate*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct bc_state*) ; 

__attribute__((used)) static int FUNC5(struct bc_state *bcs, struct cardstate *cs,
			   int channel)
{
	int i;

	bcs->tx_skb = NULL;

	FUNC2(&bcs->squeue);

	bcs->corrupted = 0;
	bcs->trans_down = 0;
	bcs->trans_up = 0;

	FUNC0(DEBUG_INIT, "setting up bcs[%d]->at_state", channel);
	FUNC1(&bcs->at_state, bcs, cs, -1);

#ifdef CONFIG_GIGASET_DEBUG
	bcs->emptycount = 0;
#endif

	bcs->rx_bufsize = 0;
	bcs->rx_skb = NULL;
	bcs->rx_fcs = PPP_INITFCS;
	bcs->inputstate = 0;
	bcs->channel = channel;
	bcs->cs = cs;

	bcs->chstate = 0;
	bcs->use_count = 1;
	bcs->busy = 0;
	bcs->ignore = cs->ignoreframes;

	for (i = 0; i < AT_NUM; ++i)
		bcs->commands[i] = NULL;

	FUNC3(&bcs->aplock);
	bcs->ap = NULL;
	bcs->apconnstate = 0;

	FUNC0(DEBUG_INIT, "  setting up bcs[%d]->hw", channel);
	return cs->ops->initbcshw(bcs);
}