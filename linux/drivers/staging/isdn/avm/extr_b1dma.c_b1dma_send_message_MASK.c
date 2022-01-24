#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_4__ {int /*<<< orphan*/  ncci_head; TYPE_2__* card; } ;
typedef  TYPE_1__ avmctrl_info ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ avmcard ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ CAPI_DATA_B3_REQ ; 
 scalar_t__ CAPI_NOERROR ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

u16 FUNC8(struct capi_ctr *ctrl, struct sk_buff *skb)
{
	avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
	avmcard *card = cinfo->card;
	u16 retval = CAPI_NOERROR;

	if (FUNC1(skb->data) == CAPI_DATA_B3_REQ) {
		unsigned long flags;
		FUNC6(&card->lock, flags);
		retval = FUNC5(&cinfo->ncci_head,
					     FUNC0(skb->data),
					     FUNC3(skb->data),
					     FUNC2(skb->data));
		FUNC7(&card->lock, flags);
	}
	if (retval == CAPI_NOERROR)
		FUNC4(card, skb);

	return retval;
}