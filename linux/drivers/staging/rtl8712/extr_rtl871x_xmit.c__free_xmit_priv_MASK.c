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
struct xmit_priv {int /*<<< orphan*/  pallocated_xmitbuf; int /*<<< orphan*/  pallocated_frame_buf; int /*<<< orphan*/ * pxmit_frame_buf; scalar_t__ pxmitbuf; struct _adapter* adapter; } ;
struct xmit_frame {int dummy; } ;
struct xmit_buf {int /*<<< orphan*/  pallocated_buf; } ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 int NR_XMITBUFF ; 
 int NR_XMITFRAME ; 
 int /*<<< orphan*/  FUNC0 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*,struct xmit_buf*) ; 

void FUNC4(struct xmit_priv *pxmitpriv)
{
	int i;
	struct _adapter *padapter = pxmitpriv->adapter;
	struct xmit_frame *pxmitframe = (struct xmit_frame *)
					pxmitpriv->pxmit_frame_buf;
	struct xmit_buf *pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;

	if (pxmitpriv->pxmit_frame_buf == NULL)
		return;
	for (i = 0; i < NR_XMITFRAME; i++) {
		FUNC2(padapter, pxmitframe);
		pxmitframe++;
	}
	for (i = 0; i < NR_XMITBUFF; i++) {
		FUNC3(padapter, pxmitbuf);
		FUNC1(pxmitbuf->pallocated_buf);
		pxmitbuf++;
	}
	FUNC1(pxmitpriv->pallocated_frame_buf);
	FUNC1(pxmitpriv->pallocated_xmitbuf);
	FUNC0(padapter);
}