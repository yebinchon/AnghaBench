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
typedef  int u8 ;
struct TYPE_2__ {scalar_t__ traffic_busy; } ;
struct mlme_priv {int /*<<< orphan*/  lock; TYPE_1__ sitesurveyctrl; } ;
struct _adapter {int /*<<< orphan*/  hw_init_completed; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int _FW_UNDER_LINKING ; 
 int _FW_UNDER_SURVEY ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*) ; 
 int FUNC2 (struct _adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

u8 FUNC5(struct _adapter *padapter)
{
	struct mlme_priv *pmlmepriv = NULL;
	unsigned long irqL;
	u8 ret = true;

	if (!padapter)
		return false;
	pmlmepriv = &padapter->mlmepriv;
	if (!padapter->hw_init_completed)
		return false;
	FUNC3(&pmlmepriv->lock, irqL);
	if (FUNC0(pmlmepriv, _FW_UNDER_SURVEY | _FW_UNDER_LINKING) ||
	    pmlmepriv->sitesurveyctrl.traffic_busy) {
		/* Scan or linking is in progress, do nothing. */
		ret = (u8)FUNC0(pmlmepriv, _FW_UNDER_SURVEY);
	} else {
		FUNC1(padapter);
		ret = FUNC2(padapter, NULL);
	}
	FUNC4(&pmlmepriv->lock, irqL);
	return ret;
}