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
typedef  int u32 ;
struct xmit_priv {int /*<<< orphan*/  ack_tx_mutex; int /*<<< orphan*/  pallocated_xmit_extbuf; scalar_t__ pxmit_extbuf; int /*<<< orphan*/  pallocated_xmitbuf; int /*<<< orphan*/  pallocated_frame_buf; scalar_t__ pxmit_frame_buf; scalar_t__ pxmitbuf; struct adapter* adapter; } ;
struct xmit_frame {int dummy; } ;
struct xmit_buf {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int NR_XMITBUFF ; 
 int NR_XMITFRAME ; 
 int NR_XMIT_EXTBUFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct xmit_buf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct xmit_priv *pxmitpriv)
{
	int i;
	struct adapter *padapter = pxmitpriv->adapter;
	struct xmit_frame *pxmitframe = (struct xmit_frame *)pxmitpriv->pxmit_frame_buf;
	struct xmit_buf *pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;
	u32 num_xmit_extbuf = NR_XMIT_EXTBUFF;

	if (!pxmitpriv->pxmit_frame_buf)
		return;

	for (i = 0; i < NR_XMITFRAME; i++) {
		FUNC2(padapter, pxmitframe);

		pxmitframe++;
	}

	for (i = 0; i < NR_XMITBUFF; i++) {
		FUNC3(pxmitbuf);
		pxmitbuf++;
	}

	FUNC4(pxmitpriv->pallocated_frame_buf);
	FUNC4(pxmitpriv->pallocated_xmitbuf);

	/*  free xmit extension buff */
	pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmit_extbuf;
	for (i = 0; i < num_xmit_extbuf; i++) {
		FUNC3(pxmitbuf);
		pxmitbuf++;
	}

	FUNC4(pxmitpriv->pallocated_xmit_extbuf);

	FUNC1(padapter);

	FUNC0(&pxmitpriv->ack_tx_mutex);
}