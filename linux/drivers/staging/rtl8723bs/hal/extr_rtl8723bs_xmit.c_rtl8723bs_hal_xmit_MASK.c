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
struct xmit_priv {int /*<<< orphan*/  SdioXmitStart; int /*<<< orphan*/  tx_drop; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int ether_type; int dhcp_pkt; int /*<<< orphan*/  priority; int /*<<< orphan*/  qsel; } ;
struct xmit_frame {scalar_t__ frame_tag; TYPE_1__ attrib; } ;
struct TYPE_5__ {scalar_t__ bBusyTraffic; } ;
struct TYPE_6__ {TYPE_2__ LinkDetectInfo; } ;
struct adapter {TYPE_3__ mlmepriv; struct xmit_priv xmitpriv; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ DATA_FRAMETAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_hal_xmit_c_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xmit_priv*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct xmit_frame*) ; 
 scalar_t__ FUNC4 (struct adapter*,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

s32 FUNC7(
	struct adapter *padapter, struct xmit_frame *pxmitframe
)
{
	struct xmit_priv *pxmitpriv;
	s32 err;


	pxmitframe->attrib.qsel = pxmitframe->attrib.priority;
	pxmitpriv = &padapter->xmitpriv;

	if (
		(pxmitframe->frame_tag == DATA_FRAMETAG) &&
		(pxmitframe->attrib.ether_type != 0x0806) &&
		(pxmitframe->attrib.ether_type != 0x888e) &&
		(pxmitframe->attrib.dhcp_pkt != 1)
	) {
		if (padapter->mlmepriv.LinkDetectInfo.bBusyTraffic)
			FUNC3(padapter, pxmitframe);
	}

	FUNC5(&pxmitpriv->lock);
	err = FUNC4(padapter, pxmitframe);
	FUNC6(&pxmitpriv->lock);
	if (err != _SUCCESS) {
		FUNC0(_module_hal_xmit_c_, _drv_err_, ("rtl8723bs_hal_xmit: enqueue xmitframe fail\n"));
		FUNC2(pxmitpriv, pxmitframe);

		pxmitpriv->tx_drop++;
		return true;
	}

	FUNC1(&pxmitpriv->SdioXmitStart);

	return false;
}