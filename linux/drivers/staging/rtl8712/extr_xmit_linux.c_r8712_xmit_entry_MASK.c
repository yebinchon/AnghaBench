#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xmit_priv {int /*<<< orphan*/  tx_drop; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_pkts; } ;
struct TYPE_4__ {scalar_t__ last_txcmdsz; } ;
struct xmit_frame {TYPE_2__ attrib; int /*<<< orphan*/ * pkt; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* LedControlHandler ) (struct _adapter*,int /*<<< orphan*/ ) ;} ;
struct _adapter {TYPE_1__ ledpriv; struct xmit_priv xmitpriv; } ;
typedef  int /*<<< orphan*/  _pkt ;

/* Variables and functions */
 int /*<<< orphan*/  LED_CTL_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct _adapter* FUNC1 (struct net_device*) ; 
 struct xmit_frame* FUNC2 (struct xmit_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct xmit_priv*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*) ; 
 scalar_t__ FUNC5 (struct _adapter*,struct xmit_frame*) ; 
 scalar_t__ FUNC6 (struct _adapter*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct _adapter*,int /*<<< orphan*/ ) ; 

int FUNC8(_pkt *pkt, struct  net_device *netdev)
{
	struct xmit_frame *xmitframe = NULL;
	struct _adapter *adapter = FUNC1(netdev);
	struct xmit_priv *xmitpriv = &(adapter->xmitpriv);

	if (!FUNC4(adapter))
		goto _xmit_entry_drop;

	xmitframe = FUNC2(xmitpriv);
	if (!xmitframe)
		goto _xmit_entry_drop;

	if (FUNC6(adapter, pkt, &xmitframe->attrib))
		goto _xmit_entry_drop;

	adapter->ledpriv.LedControlHandler(adapter, LED_CTL_TX);
	xmitframe->pkt = pkt;
	if (FUNC5(adapter, xmitframe)) {
		/*dump xmitframe directly or drop xframe*/
		FUNC0(pkt);
		xmitframe->pkt = NULL;
	}
	xmitpriv->tx_pkts++;
	xmitpriv->tx_bytes += xmitframe->attrib.last_txcmdsz;
	return 0;
_xmit_entry_drop:
	if (xmitframe)
		FUNC3(xmitpriv, xmitframe);
	xmitpriv->tx_drop++;
	FUNC0(pkt);
	return 0;
}