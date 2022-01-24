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
struct sta_info {int dummy; } ;
struct mlme_priv {int update_bcn; } ;
struct mlme_ext_info {int /*<<< orphan*/  state; } ;
struct mlme_ext_priv {int bstart_bss; struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  _HW_STATE_NOLINK_ ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,struct sta_info*) ; 
 struct sta_info* FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 

void FUNC4(struct adapter *padapter)
{
	struct sta_info *psta = NULL;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

	/* stop_ap_mode(padapter); */

	pmlmepriv->update_bcn = false;
	pmlmeext->bstart_bss = false;

	FUNC3(padapter);

	pmlmeinfo->state = _HW_STATE_NOLINK_;

	/* free_assoc_sta_resources */
	FUNC0(padapter);

	/* free bc/mc sta_info */
	psta = FUNC2(padapter);
	FUNC1(padapter, psta);
}