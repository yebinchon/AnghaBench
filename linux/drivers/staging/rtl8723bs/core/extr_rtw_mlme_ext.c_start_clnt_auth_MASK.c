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
struct mlme_ext_info {int auth_seq; scalar_t__ link_count; scalar_t__ reassoc_count; scalar_t__ reauth_count; int /*<<< orphan*/  state; } ;
struct mlme_ext_priv {scalar_t__ retry; int /*<<< orphan*/  link_timer; struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  REAUTH_TO ; 
 int /*<<< orphan*/  WIFI_FW_AUTH_NULL ; 
 int /*<<< orphan*/  WIFI_FW_AUTH_STATE ; 
 int /*<<< orphan*/  _drv_always_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlme_ext_priv*,int /*<<< orphan*/ ) ; 

void FUNC4(struct adapter *padapter)
{
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);

	FUNC1(&pmlmeext->link_timer);

	pmlmeinfo->state &= (~WIFI_FW_AUTH_NULL);
	pmlmeinfo->state |= WIFI_FW_AUTH_STATE;

	pmlmeinfo->auth_seq = 1;
	pmlmeinfo->reauth_count = 0;
	pmlmeinfo->reassoc_count = 0;
	pmlmeinfo->link_count = 0;
	pmlmeext->retry = 0;


	FUNC0(_drv_always_, "start auth\n");
	FUNC2(padapter, NULL, 0);

	FUNC3(pmlmeext, REAUTH_TO);

}