#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* bas; } ;
struct bc_state {scalar_t__ rx_bufsize; TYPE_4__* rx_skb; TYPE_3__ hw; TYPE_1__* cs; int /*<<< orphan*/  rx_fcs; } ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_7__ {int /*<<< orphan*/  giants; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline void FUNC4(unsigned char c, struct bc_state *bcs)
{
	bcs->rx_fcs = FUNC1(bcs->rx_fcs, c);
	if (bcs->rx_skb == NULL)
		/* skipping */
		return;
	if (bcs->rx_skb->len >= bcs->rx_bufsize) {
		FUNC3(bcs->cs->dev, "received oversized packet discarded\n");
		bcs->hw.bas->giants++;
		FUNC2(bcs->rx_skb);
		bcs->rx_skb = NULL;
		return;
	}
	FUNC0(bcs->rx_skb, c);
}