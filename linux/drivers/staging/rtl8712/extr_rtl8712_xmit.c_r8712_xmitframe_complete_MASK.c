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
typedef  int u16 ;
struct xmit_priv {int /*<<< orphan*/  hwxmit_entry; struct hw_xmit* hwxmits; } ;
struct TYPE_2__ {int priority; } ;
struct xmit_frame {scalar_t__ frame_tag; int /*<<< orphan*/  pkt; TYPE_1__ attrib; } ;
struct xmit_buf {int aggr_nr; } ;
struct hw_xmit {int dummy; } ;
struct _adapter {int dummy; } ;
typedef  int /*<<< orphan*/  sint ;

/* Variables and functions */
 int AGGR_NR_HIGH_BOUND ; 
 scalar_t__ DATA_FRAMETAG ; 
 int _SUCCESS ; 
 struct xmit_frame* FUNC0 (struct xmit_priv*,struct hw_xmit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,struct xmit_frame*) ; 
 struct xmit_buf* FUNC2 (struct xmit_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct xmit_buf*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct xmit_priv*,struct xmit_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct xmit_priv*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC6 (struct _adapter*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC7 (struct xmit_buf*,struct xmit_frame*) ; 
 int FUNC8 (struct xmit_buf*,struct xmit_frame*) ; 
 int FUNC9 (struct _adapter*,int /*<<< orphan*/ ,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC10 (struct xmit_frame*,struct xmit_buf*) ; 

int FUNC11(struct _adapter *padapter,
			     struct xmit_priv *pxmitpriv,
			     struct xmit_buf *pxmitbuf)
{
	struct hw_xmit *phwxmits;
	sint hwentry;
	struct xmit_frame *pxmitframe = NULL;
#ifdef CONFIG_R8712_TX_AGGR
	struct xmit_frame *p2ndxmitframe = NULL;
#else
	int res = _SUCCESS, xcnt = 0;
#endif

	phwxmits = pxmitpriv->hwxmits;
	hwentry = pxmitpriv->hwxmit_entry;
	if (!pxmitbuf) {
		pxmitbuf = FUNC2(pxmitpriv);
		if (!pxmitbuf)
			return false;
#ifdef CONFIG_R8712_TX_AGGR
		pxmitbuf->aggr_nr = 0;
#endif
	}
	/* 1st frame dequeued */
	pxmitframe = FUNC0(pxmitpriv, phwxmits, hwentry);
	/* need to remember the 1st frame */
	if (pxmitframe) {

#ifdef CONFIG_R8712_TX_AGGR
		/* 1. dequeue 2nd frame
		 * 2. aggr if 2nd xframe is dequeued, else dump directly
		 */
		if (AGGR_NR_HIGH_BOUND > 1)
			p2ndxmitframe = dequeue_xframe_ex(pxmitpriv, phwxmits,
							hwentry);
		if (pxmitframe->frame_tag != DATA_FRAMETAG) {
			r8712_free_xmitbuf(pxmitpriv, pxmitbuf);
			return false;
		}
		if (p2ndxmitframe)
			if (p2ndxmitframe->frame_tag != DATA_FRAMETAG) {
				r8712_free_xmitbuf(pxmitpriv, pxmitbuf);
				return false;
			}
		r8712_xmitframe_aggr_1st(pxmitbuf, pxmitframe);
		if (p2ndxmitframe) {
			u16 total_length;

			total_length = r8712_xmitframe_aggr_next(
				pxmitbuf, p2ndxmitframe);
			do {
				p2ndxmitframe = dequeue_xframe_ex(
					pxmitpriv, phwxmits, hwentry);
				if (p2ndxmitframe)
					total_length =
						r8712_xmitframe_aggr_next(
							pxmitbuf,
							p2ndxmitframe);
				else
					break;
			} while (total_length <= 0x1800 &&
				pxmitbuf->aggr_nr <= AGGR_NR_HIGH_BOUND);
		}
		if (pxmitbuf->aggr_nr > 0)
			r8712_dump_aggr_xframe(pxmitbuf, pxmitframe);

#else

		FUNC10(pxmitframe, pxmitbuf);
		if (pxmitframe->frame_tag == DATA_FRAMETAG) {
			if (pxmitframe->attrib.priority <= 15)
				res = FUNC9(padapter,
					pxmitframe->pkt, pxmitframe);
			/* always return ndis_packet after
			 * r8712_xmitframe_coalesce
			 */
			FUNC6(padapter, pxmitframe);
		}
		if (res == _SUCCESS)
			FUNC1(padapter, pxmitframe);
		else
			FUNC5(pxmitpriv, pxmitframe);
		xcnt++;
#endif

	} else { /* pxmitframe == NULL && p2ndxmitframe == NULL */
		FUNC4(pxmitpriv, pxmitbuf);
		return false;
	}
	return true;
}