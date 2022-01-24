#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ mfrag; scalar_t__ frag_num; scalar_t__ privacy; scalar_t__* ta; } ;
struct recv_frame_hdr {TYPE_3__ attrib; int /*<<< orphan*/  list; int /*<<< orphan*/  rx_data; } ;
struct TYPE_8__ {struct recv_frame_hdr hdr; } ;
union recv_frame {TYPE_4__ u; } ;
typedef  scalar_t__ u8 ;
struct sta_priv {int dummy; } ;
struct __queue {int /*<<< orphan*/  queue; } ;
struct TYPE_6__ {struct __queue defrag_q; } ;
struct sta_info {TYPE_2__ sta_recvpriv; } ;
struct list_head {int dummy; } ;
struct TYPE_5__ {struct __queue free_recv_queue; } ;
struct adapter {TYPE_1__ recvpriv; struct sta_priv stapriv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ WIFI_DATA_TYPE ; 
 scalar_t__ _FAIL ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_recv_c_ ; 
 struct list_head* FUNC2 (struct __queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct adapter*,union recv_frame*) ; 
 union recv_frame* FUNC6 (struct adapter*,struct __queue*) ; 
 int /*<<< orphan*/  FUNC7 (union recv_frame*,struct __queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct __queue*,struct __queue*) ; 
 struct sta_info* FUNC9 (struct adapter*) ; 
 struct sta_info* FUNC10 (struct sta_priv*,scalar_t__*) ; 

union recv_frame *FUNC11(struct adapter *padapter, union recv_frame *precv_frame)
{
	u8 ismfrag;
	u8 fragnum;
	u8 *psta_addr;
	struct recv_frame_hdr *pfhdr;
	struct sta_info *psta;
	struct sta_priv *pstapriv;
	struct list_head *phead;
	union recv_frame *prtnframe = NULL;
	struct __queue *pfree_recv_queue, *pdefrag_q;

	pstapriv = &padapter->stapriv;

	pfhdr = &precv_frame->u.hdr;

	pfree_recv_queue = &padapter->recvpriv.free_recv_queue;

	/* need to define struct of wlan header frame ctrl */
	ismfrag = pfhdr->attrib.mfrag;
	fragnum = pfhdr->attrib.frag_num;

	psta_addr = pfhdr->attrib.ta;
	psta = FUNC10(pstapriv, psta_addr);
	if (!psta) {
		u8 type = FUNC0(pfhdr->rx_data);
		if (type != WIFI_DATA_TYPE) {
			psta = FUNC9(padapter);
			pdefrag_q = &psta->sta_recvpriv.defrag_q;
		} else
			pdefrag_q = NULL;
	} else
		pdefrag_q = &psta->sta_recvpriv.defrag_q;

	if ((ismfrag == 0) && (fragnum == 0))
		prtnframe = precv_frame;/* isn't a fragment frame */

	if (ismfrag == 1) {
		/* 0~(n-1) fragment frame */
		/* enqueue to defraf_g */
		if (pdefrag_q) {
			if (fragnum == 0)
				/* the first fragment */
				if (!FUNC4(&pdefrag_q->queue))
					/* free current defrag_q */
					FUNC8(pdefrag_q, pfree_recv_queue);


			/* Then enqueue the 0~(n-1) fragment into the defrag_q */

			/* spin_lock(&pdefrag_q->lock); */
			phead = FUNC2(pdefrag_q);
			FUNC3(&pfhdr->list, phead);
			/* spin_unlock(&pdefrag_q->lock); */

			FUNC1(_module_rtl871x_recv_c_, _drv_info_, ("Enqueuq: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));

			prtnframe = NULL;

		} else {
			/* can't find this ta's defrag_queue, so free this recv_frame */
			FUNC7(precv_frame, pfree_recv_queue);
			prtnframe = NULL;
			FUNC1(_module_rtl871x_recv_c_, _drv_err_, ("Free because pdefrag_q == NULL: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));
		}

	}

	if ((ismfrag == 0) && (fragnum != 0)) {
		/* the last fragment frame */
		/* enqueue the last fragment */
		if (pdefrag_q) {
			/* spin_lock(&pdefrag_q->lock); */
			phead = FUNC2(pdefrag_q);
			FUNC3(&pfhdr->list, phead);
			/* spin_unlock(&pdefrag_q->lock); */

			/* call recvframe_defrag to defrag */
			FUNC1(_module_rtl871x_recv_c_, _drv_info_, ("defrag: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));
			precv_frame = FUNC6(padapter, pdefrag_q);
			prtnframe = precv_frame;

		} else {
			/* can't find this ta's defrag_queue, so free this recv_frame */
			FUNC7(precv_frame, pfree_recv_queue);
			prtnframe = NULL;
			FUNC1(_module_rtl871x_recv_c_, _drv_err_, ("Free because pdefrag_q == NULL: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));
		}

	}


	if ((prtnframe) && (prtnframe->u.hdr.attrib.privacy)) {
		/* after defrag we must check tkip mic code */
		if (FUNC5(padapter,  prtnframe) == _FAIL) {
			FUNC1(_module_rtl871x_recv_c_, _drv_err_, ("recvframe_chkmic(padapter,  prtnframe) == _FAIL\n"));
			FUNC7(prtnframe, pfree_recv_queue);
			prtnframe = NULL;
		}
	}
	return prtnframe;
}