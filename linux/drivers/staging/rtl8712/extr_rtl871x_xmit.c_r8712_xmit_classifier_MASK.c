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
struct pkt_attrib {int /*<<< orphan*/  priority; int /*<<< orphan*/  ra; struct sta_info* psta; } ;
struct xmit_frame {int /*<<< orphan*/  list; struct pkt_attrib attrib; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;
struct tx_servq {int /*<<< orphan*/  qcnt; TYPE_1__ sta_pending; int /*<<< orphan*/  tx_pending; } ;
struct sta_priv {int dummy; } ;
struct sta_info {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct _adapter {struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;
struct __queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WIFI_MP_STATE ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlme_priv*) ; 
 struct tx_servq* FUNC2 (struct _adapter*,struct __queue**,struct sta_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 struct sta_info* FUNC6 (struct _adapter*) ; 
 struct sta_info* FUNC7 (struct sta_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC10(struct _adapter *padapter,
			  struct xmit_frame *pxmitframe)
{
	unsigned long irqL0;
	struct  __queue *pstapending;
	struct sta_info	*psta;
	struct tx_servq	*ptxservq;
	struct pkt_attrib *pattrib = &pxmitframe->attrib;
	struct sta_priv *pstapriv = &padapter->stapriv;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	bool bmcst = FUNC3(pattrib->ra);

	if (pattrib->psta) {
		psta = pattrib->psta;
	} else {
		if (bmcst) {
			psta = FUNC6(padapter);
		} else {
			if (FUNC0(pmlmepriv, WIFI_MP_STATE))
				psta = FUNC7(pstapriv,
				       FUNC1(pmlmepriv));
			else
				psta = FUNC7(pstapriv, pattrib->ra);
		}
	}
	if (psta == NULL)
		return -EINVAL;
	ptxservq = FUNC2(padapter, &pstapending,
		   psta, pattrib->priority);
	FUNC8(&pstapending->lock, irqL0);
	if (FUNC5(&ptxservq->tx_pending))
		FUNC4(&ptxservq->tx_pending, &pstapending->queue);
	FUNC4(&pxmitframe->list, &ptxservq->sta_pending.queue);
	ptxservq->qcnt++;
	FUNC9(&pstapending->lock, irqL0);
	return 0;
}