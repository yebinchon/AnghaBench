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
struct sta_priv {int dummy; } ;
struct sta_info {int /*<<< orphan*/  mac_id; int /*<<< orphan*/  aid; } ;
struct set_assocsta_rsp {int /*<<< orphan*/  cam_id; } ;
struct set_assocsta_parm {int /*<<< orphan*/  addr; } ;
struct mlme_priv {int /*<<< orphan*/  lock; } ;
struct cmd_obj {scalar_t__ rsp; scalar_t__ parmbuf; } ;
struct adapter {struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WIFI_MP_STATE ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  _FW_UNDER_LINKING ; 
 int /*<<< orphan*/  FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_rtl871x_cmd_c_ ; 
 int FUNC2 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_obj*) ; 
 struct sta_info* FUNC4 (struct sta_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct adapter *padapter,  struct cmd_obj *pcmd)
{
	struct sta_priv *pstapriv = &padapter->stapriv;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct set_assocsta_parm *passocsta_parm = (struct set_assocsta_parm *)(pcmd->parmbuf);
	struct set_assocsta_rsp *passocsta_rsp = (struct set_assocsta_rsp *) (pcmd->rsp);
	struct sta_info *psta = FUNC4(pstapriv, passocsta_parm->addr);

	if (psta == NULL) {
		FUNC0(_module_rtl871x_cmd_c_, _drv_err_, ("\nERROR: setassocsta_cmdrsp_callbac => can't get sta_info\n\n"));
		goto exit;
	}

	psta->aid = psta->mac_id = passocsta_rsp->cam_id;

	FUNC6(&pmlmepriv->lock);

	if ((FUNC2(pmlmepriv, WIFI_MP_STATE) == true) && (FUNC2(pmlmepriv, _FW_UNDER_LINKING) == true))
		FUNC1(pmlmepriv, _FW_UNDER_LINKING);

	FUNC5(pmlmepriv, _FW_LINKED);
	FUNC7(&pmlmepriv->lock);

exit:
	FUNC3(pcmd);
}