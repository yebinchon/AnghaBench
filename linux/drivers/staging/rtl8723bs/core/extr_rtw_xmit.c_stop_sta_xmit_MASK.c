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
struct xmit_priv {int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  sta_pending; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  sta_pending; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  sta_pending; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  sta_pending; } ;
struct sta_xmit_priv {TYPE_4__ be_q; TYPE_3__ bk_q; TYPE_2__ vi_q; TYPE_1__ vo_q; } ;
struct sta_priv {int /*<<< orphan*/  sta_dz_bitmap; } ;
struct sta_info {struct sta_xmit_priv sta_xmitpriv; int /*<<< orphan*/  aid; int /*<<< orphan*/  state; } ;
struct adapter {struct xmit_priv xmitpriv; struct sta_priv stapriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIFI_SLEEP_STATE ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,struct sta_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct adapter *padapter, struct sta_info *psta)
{
	struct sta_info *psta_bmc;
	struct sta_xmit_priv *pstaxmitpriv;
	struct sta_priv *pstapriv = &padapter->stapriv;
	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;

	pstaxmitpriv = &psta->sta_xmitpriv;

	/* for BC/MC Frames */
	psta_bmc = FUNC3(padapter);


	FUNC4(&pxmitpriv->lock);

	psta->state |= WIFI_SLEEP_STATE;

	pstapriv->sta_dz_bitmap |= FUNC0(psta->aid);



	FUNC1(padapter, psta, &pstaxmitpriv->vo_q.sta_pending);
	FUNC2(&(pstaxmitpriv->vo_q.tx_pending));


	FUNC1(padapter, psta, &pstaxmitpriv->vi_q.sta_pending);
	FUNC2(&(pstaxmitpriv->vi_q.tx_pending));


	FUNC1(padapter, psta, &pstaxmitpriv->be_q.sta_pending);
	FUNC2(&(pstaxmitpriv->be_q.tx_pending));


	FUNC1(padapter, psta, &pstaxmitpriv->bk_q.sta_pending);
	FUNC2(&(pstaxmitpriv->bk_q.tx_pending));

	/* for BC/MC Frames */
	pstaxmitpriv = &psta_bmc->sta_xmitpriv;
	FUNC1(padapter, psta_bmc, &pstaxmitpriv->be_q.sta_pending);
	FUNC2(&(pstaxmitpriv->be_q.tx_pending));

	FUNC5(&pxmitpriv->lock);
}