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
struct rx_pkt_attrib {int crc_err; } ;
struct TYPE_6__ {struct rx_pkt_attrib attrib; } ;
struct TYPE_7__ {TYPE_2__ hdr; } ;
union recv_frame {TYPE_3__ u; } ;
struct mlme_priv {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  rx_pktcount; int /*<<< orphan*/  rx_crcerrpktcount; } ;
struct __queue {int dummy; } ;
struct TYPE_5__ {struct __queue free_recv_queue; } ;
struct _adapter {TYPE_4__ mppriv; struct mlme_priv mlmepriv; TYPE_1__ recvpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIFI_MP_LPBK_STATE ; 
 int /*<<< orphan*/  WIFI_MP_STATE ; 
 int _FAIL ; 
 int _SUCCESS ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,union recv_frame*) ; 
 union recv_frame* FUNC2 (struct _adapter*,union recv_frame*) ; 
 int /*<<< orphan*/  FUNC3 (union recv_frame*,struct __queue*) ; 
 union recv_frame* FUNC4 (struct _adapter*,union recv_frame*) ; 
 int FUNC5 (struct _adapter*,union recv_frame*) ; 
 union recv_frame* FUNC6 (struct _adapter*,union recv_frame*) ; 
 int FUNC7 (struct _adapter*,union recv_frame*) ; 

int FUNC8(struct _adapter *padapter, void *pcontext)
{
	struct rx_pkt_attrib *pattrib;
	union recv_frame *prframe, *orig_prframe;
	int retval = _SUCCESS;
	struct  __queue *pfree_recv_queue = &padapter->recvpriv.free_recv_queue;
	struct	mlme_priv	*pmlmepriv = &padapter->mlmepriv;

	prframe = pcontext;
	orig_prframe = prframe;
	pattrib = &prframe->u.hdr.attrib;
	if (FUNC0(pmlmepriv, WIFI_MP_STATE)) {
		if (pattrib->crc_err == 1)
			padapter->mppriv.rx_crcerrpktcount++;
		else
			padapter->mppriv.rx_pktcount++;
		if (!FUNC0(pmlmepriv, WIFI_MP_LPBK_STATE)) {
			/* free this recv_frame */
			FUNC3(orig_prframe, pfree_recv_queue);
			goto _exit_recv_func;
		}
	}
	/* check the frame crtl field and decache */
	retval = FUNC7(padapter, prframe);
	if (retval != _SUCCESS) {
		/* free this recv_frame */
		FUNC3(orig_prframe, pfree_recv_queue);
		goto _exit_recv_func;
	}
	FUNC1(padapter, prframe);
	prframe = FUNC2(padapter, prframe);
	if (!prframe) {
		retval = _FAIL;
		goto _exit_recv_func;
	}
	prframe = FUNC6(padapter, prframe);
	if (!prframe)
		goto _exit_recv_func;
	prframe = FUNC4(padapter, prframe);
	if (!prframe) {
		retval = _FAIL;
		goto _exit_recv_func;
	}
	retval = FUNC5(padapter, prframe);
	if (retval != _SUCCESS) {
		FUNC3(orig_prframe, pfree_recv_queue);
		goto _exit_recv_func;
	}
_exit_recv_func:
	return retval;
}