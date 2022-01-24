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
struct sk_buff {int dummy; } ;
struct cmdbuf_t {scalar_t__ wake_tasklet; struct cmdbuf_t* next; } ;
struct cardstate {TYPE_1__* bcs; int /*<<< orphan*/  cmdlock; scalar_t__ curlen; scalar_t__ cmdbytes; int /*<<< orphan*/ * lastcmdbuf; struct cmdbuf_t* cmdbuf; } ;
struct TYPE_2__ {int /*<<< orphan*/  squeue; struct sk_buff* tx_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct cmdbuf_t*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct cardstate *cs)
{
	struct sk_buff *skb;
	struct cmdbuf_t *cb;
	unsigned long flags;

	/* command queue */
	FUNC3(&cs->cmdlock, flags);
	while ((cb = cs->cmdbuf) != NULL) {
		cs->cmdbuf = cb->next;
		if (cb->wake_tasklet)
			FUNC5(cb->wake_tasklet);
		FUNC1(cb);
	}
	cs->cmdbuf = cs->lastcmdbuf = NULL;
	cs->cmdbytes = cs->curlen = 0;
	FUNC4(&cs->cmdlock, flags);

	/* data queue */
	if (cs->bcs->tx_skb)
		FUNC0(cs->bcs->tx_skb);
	while ((skb = FUNC2(&cs->bcs->squeue)) != NULL)
		FUNC0(skb);
}