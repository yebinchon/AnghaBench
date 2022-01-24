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
struct xmit_priv {int /*<<< orphan*/  ack_tx_mutex; struct xmit_buf* pcmd_xmitbuf; scalar_t__ pallocated_xmit_extbuf; scalar_t__ pxmit_extbuf; scalar_t__ xframe_ext_alloc_addr; scalar_t__ xframe_ext; scalar_t__ pallocated_xmitbuf; scalar_t__ pallocated_frame_buf; scalar_t__ pxmit_frame_buf; scalar_t__ pxmitbuf; struct adapter* adapter; } ;
struct xmit_frame {int dummy; } ;
struct xmit_buf {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int CMDBUF_MAX ; 
 scalar_t__ MAX_CMDBUF_SZ ; 
 scalar_t__ MAX_XMITBUF_SZ ; 
 scalar_t__ MAX_XMIT_EXTBUF_SZ ; 
 int NR_XMITBUFF ; 
 int NR_XMITFRAME ; 
 int NR_XMIT_EXTBUFF ; 
 scalar_t__ XMITBUF_ALIGN_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,struct xmit_buf*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(struct xmit_priv *pxmitpriv)
{
	int i;
	struct adapter *padapter = pxmitpriv->adapter;
	struct xmit_frame	*pxmitframe = (struct xmit_frame *) pxmitpriv->pxmit_frame_buf;
	struct xmit_buf *pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;

	FUNC2(padapter);

	if (!pxmitpriv->pxmit_frame_buf)
		return;

	for (i = 0; i < NR_XMITFRAME; i++) {
		FUNC3(padapter, pxmitframe);

		pxmitframe++;
	}

	for (i = 0; i < NR_XMITBUFF; i++) {
		FUNC4(padapter, pxmitbuf, (MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ), true);

		pxmitbuf++;
	}

	if (pxmitpriv->pallocated_frame_buf)
		FUNC5(pxmitpriv->pallocated_frame_buf);


	if (pxmitpriv->pallocated_xmitbuf)
		FUNC5(pxmitpriv->pallocated_xmitbuf);

	/* free xframe_ext queue,  the same count as extbuf  */
	pxmitframe = (struct xmit_frame *)pxmitpriv->xframe_ext;
	if (pxmitframe) {
		for (i = 0; i < NR_XMIT_EXTBUFF; i++) {
			FUNC3(padapter, pxmitframe);
			pxmitframe++;
		}
	}
	if (pxmitpriv->xframe_ext_alloc_addr)
		FUNC5(pxmitpriv->xframe_ext_alloc_addr);

	/*  free xmit extension buff */
	pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmit_extbuf;
	for (i = 0; i < NR_XMIT_EXTBUFF; i++) {
		FUNC4(padapter, pxmitbuf, (MAX_XMIT_EXTBUF_SZ + XMITBUF_ALIGN_SZ), true);

		pxmitbuf++;
	}

	if (pxmitpriv->pallocated_xmit_extbuf) {
		FUNC5(pxmitpriv->pallocated_xmit_extbuf);
	}

	for (i = 0; i < CMDBUF_MAX; i++) {
		pxmitbuf = &pxmitpriv->pcmd_xmitbuf[i];
		if (pxmitbuf)
			FUNC4(padapter, pxmitbuf, MAX_CMDBUF_SZ+XMITBUF_ALIGN_SZ, true);
	}

	FUNC1(padapter);

	FUNC0(&pxmitpriv->ack_tx_mutex);
}