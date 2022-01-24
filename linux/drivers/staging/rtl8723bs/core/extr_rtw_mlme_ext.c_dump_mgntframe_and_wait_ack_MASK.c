#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct xmit_priv {int ack_tx; int /*<<< orphan*/  ack_tx_mutex; scalar_t__ seq_no; } ;
struct xmit_frame {int ack_report; int /*<<< orphan*/  pxmitbuf; } ;
struct adapter {struct xmit_priv xmitpriv; scalar_t__ bDriverStopped; scalar_t__ bSurpriseRemoved; } ;
typedef  int s32 ;

/* Variables and functions */
 int _FAIL ; 
 scalar_t__ _SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct xmit_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xmit_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xmit_priv*,struct xmit_frame*) ; 
 scalar_t__ FUNC5 (struct adapter*,struct xmit_frame*) ; 

s32 FUNC6(struct adapter *padapter, struct xmit_frame *pmgntframe)
{
	static u8 seq_no;
	s32 ret = _FAIL;
	u32 timeout_ms = 500;/*   500ms */
	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;

	if (padapter->bSurpriseRemoved ||
		padapter->bDriverStopped) {
		FUNC3(&padapter->xmitpriv, pmgntframe->pxmitbuf);
		FUNC4(&padapter->xmitpriv, pmgntframe);
		return -1;
	}

	if (FUNC0(&pxmitpriv->ack_tx_mutex) == 0) {
		pxmitpriv->ack_tx = true;
		pxmitpriv->seq_no = seq_no++;
		pmgntframe->ack_report = 1;
		if (FUNC5(padapter, pmgntframe) == _SUCCESS)
			ret = FUNC2(pxmitpriv, timeout_ms);

		pxmitpriv->ack_tx = false;
		FUNC1(&pxmitpriv->ack_tx_mutex);
	}

	return ret;
}