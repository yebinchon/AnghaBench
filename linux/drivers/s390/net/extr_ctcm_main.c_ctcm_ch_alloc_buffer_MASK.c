#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct channel {int /*<<< orphan*/  flags; TYPE_2__* trans_skb; int /*<<< orphan*/  trans_skb_data; TYPE_1__* ccw; int /*<<< orphan*/  id; scalar_t__ max_bufsize; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {scalar_t__ count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHANNEL_FLAGS_BUFSIZE_CHANGED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 scalar_t__ CTCM_READ ; 
 int /*<<< orphan*/  CTC_DBF_ERROR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ERROR ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 TYPE_2__* FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC6(struct channel *ch)
{
	FUNC3(&ch->ccw[1]);
	ch->trans_skb = FUNC2(ch->max_bufsize, GFP_ATOMIC | GFP_DMA);
	if (ch->trans_skb == NULL) {
		FUNC1(ERROR, CTC_DBF_ERROR,
			"%s(%s): %s trans_skb allocation error",
			CTCM_FUNTAIL, ch->id,
			(FUNC0(ch->flags) == CTCM_READ) ?
				"RX" : "TX");
		return -ENOMEM;
	}

	ch->ccw[1].count = ch->max_bufsize;
	if (FUNC5(&ch->ccw[1], ch->trans_skb->data)) {
		FUNC4(ch->trans_skb);
		ch->trans_skb = NULL;
		FUNC1(ERROR, CTC_DBF_ERROR,
			"%s(%s): %s set norm_cda failed",
			CTCM_FUNTAIL, ch->id,
			(FUNC0(ch->flags) == CTCM_READ) ?
				"RX" : "TX");
		return -ENOMEM;
	}

	ch->ccw[1].count = 0;
	ch->trans_skb_data = ch->trans_skb->data;
	ch->flags &= ~CHANNEL_FLAGS_BUFSIZE_CHANGED;
	return 0;
}