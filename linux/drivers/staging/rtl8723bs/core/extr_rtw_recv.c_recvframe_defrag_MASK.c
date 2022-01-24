#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ frag_num; scalar_t__ hdrlen; scalar_t__ iv_len; int /*<<< orphan*/  icv_len; } ;
struct recv_frame_hdr {TYPE_3__ attrib; int /*<<< orphan*/  len; int /*<<< orphan*/  rx_data; int /*<<< orphan*/  rx_tail; } ;
struct TYPE_5__ {struct recv_frame_hdr hdr; int /*<<< orphan*/  list; } ;
union recv_frame {TYPE_2__ u; } ;
typedef  scalar_t__ u8 ;
struct list_head {int dummy; } ;
struct __queue {int dummy; } ;
struct TYPE_4__ {struct __queue free_recv_queue; } ;
struct adapter {TYPE_1__ recvpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _drv_info_ ; 
 int /*<<< orphan*/  _module_rtl871x_recv_c_ ; 
 struct list_head* FUNC1 (struct __queue*) ; 
 struct list_head* FUNC2 (struct list_head*) ; 
 scalar_t__* FUNC3 (union recv_frame*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union recv_frame*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (union recv_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (union recv_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union recv_frame*,struct __queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct __queue*,struct __queue*) ; 

__attribute__((used)) static union recv_frame *FUNC11(struct adapter *adapter,
					  struct __queue *defrag_q)
{
	struct list_head	 *plist, *phead;
	u8 *data, wlanhdr_offset;
	u8 curfragnum;
	struct recv_frame_hdr *pfhdr, *pnfhdr;
	union recv_frame *prframe, *pnextrframe;
	struct __queue	*pfree_recv_queue;

	curfragnum = 0;
	pfree_recv_queue = &adapter->recvpriv.free_recv_queue;

	phead = FUNC1(defrag_q);
	plist = FUNC2(phead);
	prframe = (union recv_frame *)plist;
	pfhdr = &prframe->u.hdr;
	FUNC4(&(prframe->u.list));

	if (curfragnum != pfhdr->attrib.frag_num) {
		/* the first fragment number must be 0 */
		/* free the whole queue */
		FUNC9(prframe, pfree_recv_queue);
		FUNC10(defrag_q, pfree_recv_queue);

		return NULL;
	}

	curfragnum++;

	plist = FUNC1(defrag_q);

	plist = FUNC2(plist);

	data = FUNC3(prframe);

	while (phead != plist) {
		pnextrframe = (union recv_frame *)plist;
		pnfhdr = &pnextrframe->u.hdr;


		/* check the fragment sequence  (2nd ~n fragment frame) */

		if (curfragnum != pnfhdr->attrib.frag_num) {
			/* the fragment number must be increasing  (after decache) */
			/* release the defrag_q & prframe */
			FUNC9(prframe, pfree_recv_queue);
			FUNC10(defrag_q, pfree_recv_queue);
			return NULL;
		}

		curfragnum++;

		/* copy the 2nd~n fragment frame's payload to the first fragment */
		/* get the 2nd~last fragment frame's payload */

		wlanhdr_offset = pnfhdr->attrib.hdrlen + pnfhdr->attrib.iv_len;

		FUNC6(pnextrframe, wlanhdr_offset);

		/* append  to first fragment frame's tail (if privacy frame, pull the ICV) */
		FUNC7(prframe, pfhdr->attrib.icv_len);

		/* memcpy */
		FUNC5(pfhdr->rx_tail, pnfhdr->rx_data, pnfhdr->len);

		FUNC8(prframe, pnfhdr->len);

		pfhdr->attrib.icv_len = pnfhdr->attrib.icv_len;
		plist = FUNC2(plist);

	}

	/* free the defrag_q queue and return the prframe */
	FUNC10(defrag_q, pfree_recv_queue);

	FUNC0(_module_rtl871x_recv_c_, _drv_info_, ("Performance defrag!!!!!\n"));

	return prframe;
}