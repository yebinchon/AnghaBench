#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct gsm_mux {int mtu; int /*<<< orphan*/  ftype; } ;
struct gsm_msg {int /*<<< orphan*/ * data; } ;
struct gsm_dlci {int adaption; TYPE_1__* skb; int /*<<< orphan*/  skb_list; int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {int len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct gsm_dlci*,struct gsm_msg*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct gsm_msg* FUNC2 (struct gsm_mux*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct gsm_mux *gsm,
						struct gsm_dlci *dlci)
{
	struct gsm_msg *msg;
	u8 *dp;
	int len, size;
	int last = 0, first = 0;
	int overhead = 0;

	/* One byte per frame is used for B/F flags */
	if (dlci->adaption == 4)
		overhead = 1;

	/* dlci->skb is locked by tx_lock */
	if (dlci->skb == NULL) {
		dlci->skb = FUNC4(&dlci->skb_list);
		if (dlci->skb == NULL)
			return 0;
		first = 1;
	}
	len = dlci->skb->len + overhead;

	/* MTU/MRU count only the data bits */
	if (len > gsm->mtu) {
		if (dlci->adaption == 3) {
			/* Over long frame, bin it */
			FUNC1(dlci->skb);
			dlci->skb = NULL;
			return 0;
		}
		len = gsm->mtu;
	} else
		last = 1;

	size = len + overhead;
	msg = FUNC2(gsm, dlci->addr, size, gsm->ftype);

	/* FIXME: need a timer or something to kick this so it can't
	   get stuck with no work outstanding and no buffer free */
	if (msg == NULL) {
		FUNC6(&dlci->skb_list, dlci->skb);
		dlci->skb = NULL;
		return -ENOMEM;
	}
	dp = msg->data;

	if (dlci->adaption == 4) { /* Interruptible framed (Packetised Data) */
		/* Flag byte to carry the start/end info */
		*dp++ = last << 7 | first << 6 | 1;	/* EA */
		len--;
	}
	FUNC3(dp, dlci->skb->data, len);
	FUNC5(dlci->skb, len);
	FUNC0(dlci, msg);
	if (last) {
		FUNC1(dlci->skb);
		dlci->skb = NULL;
	}
	return size;
}