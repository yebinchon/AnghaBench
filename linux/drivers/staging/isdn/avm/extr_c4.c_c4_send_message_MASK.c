#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_6__ {int /*<<< orphan*/  ncci_head; TYPE_3__* card; } ;
typedef  TYPE_2__ avmctrl_info ;
struct TYPE_7__ {int /*<<< orphan*/  lock; TYPE_1__* dma; } ;
typedef  TYPE_3__ avmcard ;
struct TYPE_5__ {int /*<<< orphan*/  send_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ CAPI_DATA_B3_REQ ; 
 scalar_t__ CAPI_NOERROR ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u16 FUNC9(struct capi_ctr *ctrl, struct sk_buff *skb)
{
	avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
	avmcard *card = cinfo->card;
	u16 retval = CAPI_NOERROR;
	unsigned long flags;

	FUNC7(&card->lock, flags);
	if (FUNC1(skb->data) == CAPI_DATA_B3_REQ) {
		retval = FUNC5(&cinfo->ncci_head,
					     FUNC0(skb->data),
					     FUNC3(skb->data),
					     FUNC2(skb->data));
	}
	if (retval == CAPI_NOERROR) {
		FUNC6(&card->dma->send_queue, skb);
		FUNC4(card);
	}
	FUNC8(&card->lock, flags);
	return retval;
}