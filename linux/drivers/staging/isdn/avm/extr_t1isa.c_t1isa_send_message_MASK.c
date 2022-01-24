#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_3__ {int /*<<< orphan*/  ncci_head; TYPE_2__* card; } ;
typedef  TYPE_1__ avmctrl_info ;
struct TYPE_4__ {unsigned int port; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ avmcard ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ CAPI_DATA_B3_REQ ; 
 scalar_t__ CAPI_NOERROR ; 
 int /*<<< orphan*/  SEND_DATA_B3_REQ ; 
 int /*<<< orphan*/  SEND_MESSAGE ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static u16 FUNC14(struct capi_ctr *ctrl, struct sk_buff *skb)
{
	avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
	avmcard *card = cinfo->card;
	unsigned int port = card->port;
	unsigned long flags;
	u16 len = FUNC4(skb->data);
	u8 cmd = FUNC2(skb->data);
	u8 subcmd = FUNC7(skb->data);
	u16 dlen, retval;

	FUNC11(&card->lock, flags);
	if (FUNC0(cmd, subcmd) == CAPI_DATA_B3_REQ) {
		retval = FUNC9(&cinfo->ncci_head,
					     FUNC1(skb->data),
					     FUNC6(skb->data),
					     FUNC5(skb->data));
		if (retval != CAPI_NOERROR) {
			FUNC12(&card->lock, flags);
			return retval;
		}
		dlen = FUNC3(skb->data);

		FUNC8(port, SEND_DATA_B3_REQ);
		FUNC13(port, skb->data, len);
		FUNC13(port, skb->data + len, dlen);
	} else {
		FUNC8(port, SEND_MESSAGE);
		FUNC13(port, skb->data, len);
	}
	FUNC12(&card->lock, flags);
	FUNC10(skb);
	return CAPI_NOERROR;
}