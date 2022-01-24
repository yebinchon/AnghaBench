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
typedef  scalar_t__ u8 ;
struct sta_info {int /*<<< orphan*/  x_UncstKey; int /*<<< orphan*/  hwaddr; } ;
struct set_stakey_rsp {int dummy; } ;
struct set_stakey_parm {int rspsz; unsigned char algorithm; int /*<<< orphan*/  key; int /*<<< orphan*/  addr; scalar_t__* rsp; } ;
struct security_priv {int XGrpKeyid; TYPE_1__* XGrpKey; scalar_t__ PrivacyAlgrthm; } ;
struct mlme_priv {int dummy; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int rspsz; unsigned char algorithm; int /*<<< orphan*/  key; int /*<<< orphan*/  addr; scalar_t__* rsp; } ;
struct _adapter {struct security_priv securitypriv; struct mlme_priv mlmepriv; struct cmd_priv cmdpriv; } ;
struct TYPE_2__ {int /*<<< orphan*/  skey; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct security_priv*,struct sta_info*,unsigned char,int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  WIFI_STATION_STATE ; 
 int /*<<< orphan*/  _SetStaKey_CMD_ ; 
 scalar_t__ FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct set_stakey_parm*,struct set_stakey_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct set_stakey_parm*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cmd_priv*,struct set_stakey_parm*) ; 

void FUNC8(struct _adapter *padapter, u8 *psta, u8 unicast_key)
{
	struct cmd_obj *ph2c;
	struct set_stakey_parm *psetstakey_para;
	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
	struct set_stakey_rsp *psetstakey_rsp = NULL;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct security_priv *psecuritypriv = &padapter->securitypriv;
	struct sta_info *sta = (struct sta_info *)psta;

	ph2c = FUNC5(sizeof(*ph2c), GFP_ATOMIC);
	if (!ph2c)
		return;
	psetstakey_para = FUNC5(sizeof(*psetstakey_para), GFP_ATOMIC);
	if (!psetstakey_para) {
		FUNC4(ph2c);
		return;
	}
	psetstakey_rsp = FUNC5(sizeof(*psetstakey_rsp), GFP_ATOMIC);
	if (!psetstakey_rsp) {
		FUNC4(ph2c);
		FUNC4(psetstakey_para);
		return;
	}
	FUNC3(ph2c, psetstakey_para, _SetStaKey_CMD_);
	ph2c->rsp = (u8 *) psetstakey_rsp;
	ph2c->rspsz = sizeof(struct set_stakey_rsp);
	FUNC2(psetstakey_para->addr, sta->hwaddr);
	if (FUNC1(pmlmepriv, WIFI_STATION_STATE))
		psetstakey_para->algorithm = (unsigned char)
					    psecuritypriv->PrivacyAlgrthm;
	else
		FUNC0(psecuritypriv, sta,
			       psetstakey_para->algorithm, false);
	if (unicast_key)
		FUNC6(&psetstakey_para->key, &sta->x_UncstKey, 16);
	else
		FUNC6(&psetstakey_para->key,
			&psecuritypriv->XGrpKey[
			psecuritypriv->XGrpKeyid - 1]. skey, 16);
	FUNC7(pcmdpriv, ph2c);
}