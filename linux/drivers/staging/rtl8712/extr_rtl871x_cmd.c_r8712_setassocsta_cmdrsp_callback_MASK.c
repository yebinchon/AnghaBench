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
struct mlme_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  fw_state; } ;
struct cmd_obj {scalar_t__ rsp; scalar_t__ parmbuf; } ;
struct _adapter {struct mlme_priv mlmepriv; struct sta_priv stapriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIFI_MP_STATE ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  _FW_UNDER_LINKING ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_obj*) ; 
 struct sta_info* FUNC2 (struct sta_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct _adapter *padapter,
				       struct cmd_obj *pcmd)
{
	unsigned long	irqL;
	struct sta_priv *pstapriv = &padapter->stapriv;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct set_assocsta_parm *passocsta_parm =
				(struct set_assocsta_parm *)(pcmd->parmbuf);
	struct set_assocsta_rsp *passocsta_rsp =
				(struct set_assocsta_rsp *) (pcmd->rsp);
	struct sta_info *psta = FUNC2(pstapriv,
						  passocsta_parm->addr);

	if (!psta)
		return;
	psta->aid = psta->mac_id = passocsta_rsp->cam_id;
	FUNC4(&pmlmepriv->lock, irqL);
	if ((FUNC0(pmlmepriv, WIFI_MP_STATE)) &&
	    (FUNC0(pmlmepriv, _FW_UNDER_LINKING)))
		pmlmepriv->fw_state ^= _FW_UNDER_LINKING;
	FUNC3(pmlmepriv, _FW_LINKED);
	FUNC5(&pmlmepriv->lock, irqL);
	FUNC1(pcmd);
}