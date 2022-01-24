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
struct sta_info {int /*<<< orphan*/  dot118021x_UncstKey; int /*<<< orphan*/  hwaddr; } ;
struct set_stakey_rsp {int rspsz; unsigned char algorithm; int /*<<< orphan*/  key; int /*<<< orphan*/  addr; scalar_t__* rsp; } ;
struct set_stakey_parm {int rspsz; unsigned char algorithm; int /*<<< orphan*/  key; int /*<<< orphan*/  addr; scalar_t__* rsp; } ;
struct security_priv {size_t dot118021XGrpKeyid; int busetkipkey; TYPE_1__* dot118021XGrpKey; scalar_t__ dot11PrivacyAlgrthm; } ;
struct mlme_priv {int dummy; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int rspsz; unsigned char algorithm; int /*<<< orphan*/  key; int /*<<< orphan*/  addr; scalar_t__* rsp; } ;
struct adapter {struct security_priv securitypriv; struct mlme_priv mlmepriv; struct cmd_priv cmdpriv; } ;
struct TYPE_2__ {int /*<<< orphan*/  skey; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct security_priv*,struct sta_info*,unsigned char,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WIFI_STATION_STATE ; 
 scalar_t__ _FAIL ; 
 int /*<<< orphan*/  _SetStaKey_CMD_ ; 
 scalar_t__ FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct set_stakey_rsp*,struct set_stakey_rsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct set_stakey_rsp*) ; 
 struct set_stakey_rsp* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (struct cmd_priv*,struct set_stakey_rsp*) ; 

u8 FUNC8(struct adapter *padapter, u8 *psta, u8 unicast_key)
{
	struct cmd_obj *ph2c;
	struct set_stakey_parm *psetstakey_para;
	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
	struct set_stakey_rsp *psetstakey_rsp = NULL;

	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	struct security_priv *psecuritypriv = &padapter->securitypriv;
	struct sta_info *sta = (struct sta_info *)psta;

	ph2c = FUNC5(sizeof(*ph2c), GFP_KERNEL);
	psetstakey_para = FUNC5(sizeof(*psetstakey_para), GFP_KERNEL);
	psetstakey_rsp = FUNC5(sizeof(*psetstakey_rsp), GFP_KERNEL);

	if (!ph2c || !psetstakey_para || !psetstakey_rsp) {
		FUNC4(ph2c);
		FUNC4(psetstakey_para);
		FUNC4(psetstakey_rsp);
		return _FAIL;
	}

	FUNC3(ph2c, psetstakey_para, _SetStaKey_CMD_);
	ph2c->rsp = (u8 *)psetstakey_rsp;
	ph2c->rspsz = sizeof(struct set_stakey_rsp);

	FUNC2(psetstakey_para->addr, sta->hwaddr);

	if (FUNC1(pmlmepriv, WIFI_STATION_STATE))
		psetstakey_para->algorithm = (unsigned char)psecuritypriv->dot11PrivacyAlgrthm;
	else
		FUNC0(psecuritypriv, sta, psetstakey_para->algorithm, false);

	if (unicast_key)
		FUNC6(&psetstakey_para->key, &sta->dot118021x_UncstKey, 16);
	else
		FUNC6(&psetstakey_para->key, &psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey, 16);

	/* jeff: set this because at least sw key is ready */
	padapter->securitypriv.busetkipkey = true;

	return FUNC7(pcmdpriv, ph2c);
}