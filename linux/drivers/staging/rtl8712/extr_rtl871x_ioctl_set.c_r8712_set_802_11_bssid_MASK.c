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
typedef  int u8 ;
struct TYPE_3__ {int /*<<< orphan*/  MacAddress; } ;
struct TYPE_4__ {TYPE_1__ network; } ;
struct mlme_priv {int assoc_by_bssid; int /*<<< orphan*/  lock; int /*<<< orphan*/  assoc_bssid; TYPE_2__ cur_network; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 int WIFI_STATION_STATE ; 
 int _FW_LINKED ; 
 int _FW_UNDER_LINKING ; 
 int _FW_UNDER_SURVEY ; 
 int /*<<< orphan*/  FUNC0 (struct mlme_priv*,int) ; 
 int FUNC1 (struct mlme_priv*,int) ; 
 int FUNC2 (struct _adapter*) ; 
 scalar_t__ FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

u8 FUNC13(struct _adapter *padapter, u8 *bssid)
{
	unsigned long irqL;
	u8 status = true;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

	if (FUNC4(bssid) || FUNC3(bssid)) {
		status = false;
		return status;
	}
	FUNC11(&pmlmepriv->lock, irqL);
	if (FUNC1(pmlmepriv, _FW_UNDER_SURVEY |
	    _FW_UNDER_LINKING)) {
		status = FUNC1(pmlmepriv, _FW_UNDER_LINKING);
		goto _Abort_Set_BSSID;
	}
	if (FUNC1(pmlmepriv,
	    _FW_LINKED | WIFI_ADHOC_MASTER_STATE)) {
		if (!FUNC5(&pmlmepriv->cur_network.network.MacAddress, bssid,
		    ETH_ALEN)) {
			if (!FUNC1(pmlmepriv, WIFI_STATION_STATE))
				/* driver is in
				 * WIFI_ADHOC_MASTER_STATE
				 */
				goto _Abort_Set_BSSID;
		} else {
			FUNC7(padapter);
			if (FUNC1(pmlmepriv, _FW_LINKED))
				FUNC9(padapter);
			FUNC8(padapter);
			if ((FUNC1(pmlmepriv,
			     WIFI_ADHOC_MASTER_STATE))) {
				FUNC0(pmlmepriv,
					      WIFI_ADHOC_MASTER_STATE);
				FUNC10(pmlmepriv, WIFI_ADHOC_STATE);
			}
		}
	}
	FUNC6(&pmlmepriv->assoc_bssid, bssid, ETH_ALEN);
	pmlmepriv->assoc_by_bssid = true;
	status = FUNC2(padapter);
	goto done;
_Abort_Set_BSSID:
done:
	FUNC12(&pmlmepriv->lock, irqL);
	return status;
}