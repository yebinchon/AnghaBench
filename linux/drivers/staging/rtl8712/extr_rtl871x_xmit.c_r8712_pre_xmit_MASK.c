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
struct xmit_priv {int /*<<< orphan*/  lock; } ;
struct pkt_attrib {int dummy; } ;
struct xmit_frame {struct pkt_attrib attrib; } ;
struct xmit_buf {int dummy; } ;
struct _adapter {struct xmit_priv xmitpriv; } ;

/* Variables and functions */
 struct xmit_buf* FUNC0 (struct xmit_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,struct pkt_attrib*) ; 
 scalar_t__ FUNC2 (struct _adapter*,struct pkt_attrib*) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct xmit_frame*,struct xmit_buf*) ; 

int FUNC8(struct _adapter *padapter, struct xmit_frame *pxmitframe)
{
	unsigned long irqL;
	int ret;
	struct xmit_buf *pxmitbuf = NULL;
	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
	struct pkt_attrib *pattrib = &pxmitframe->attrib;

	FUNC1(padapter, pattrib);
	FUNC5(&pxmitpriv->lock, irqL);
	if (FUNC2(padapter, pattrib) > 0) {
		ret = false;
		FUNC4(padapter, pxmitframe);
		FUNC6(&pxmitpriv->lock, irqL);
		return ret;
	}
	pxmitbuf = FUNC0(pxmitpriv);
	if (pxmitbuf == NULL) { /*enqueue packet*/
		ret = false;
		FUNC4(padapter, pxmitframe);
		FUNC6(&pxmitpriv->lock, irqL);
	} else { /*dump packet directly*/
		FUNC6(&pxmitpriv->lock, irqL);
		ret = true;
		FUNC7(pxmitframe, pxmitbuf);
		FUNC3(padapter, pxmitframe);
	}
	return ret;
}