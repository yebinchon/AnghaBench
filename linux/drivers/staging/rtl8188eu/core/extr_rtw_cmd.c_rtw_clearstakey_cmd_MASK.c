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
typedef  int /*<<< orphan*/  u8 ;
struct sta_info {int /*<<< orphan*/  hwaddr; } ;
struct set_stakey_rsp {int dummy; } ;
struct set_stakey_parm {int rspsz; int /*<<< orphan*/  id; int /*<<< orphan*/  algorithm; int /*<<< orphan*/  addr; int /*<<< orphan*/ * rsp; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int rspsz; int /*<<< orphan*/  id; int /*<<< orphan*/  algorithm; int /*<<< orphan*/  addr; int /*<<< orphan*/ * rsp; } ;
struct adapter {struct cmd_priv cmdpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _NO_PRIVACY_ ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  _SetStaKey_CMD_ ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct set_stakey_parm*,struct set_stakey_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct set_stakey_parm*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cmd_priv*,struct set_stakey_parm*) ; 

u8 FUNC6(struct adapter *padapter, u8 *psta, u8 entry, u8 enqueue)
{
	struct cmd_obj *ph2c;
	struct set_stakey_parm	*psetstakey_para;
	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
	struct set_stakey_rsp *psetstakey_rsp = NULL;
	struct sta_info *sta = (struct sta_info *)psta;
	u8	res = _SUCCESS;

	if (!enqueue) {
		FUNC0(padapter, entry);
	} else {
		ph2c = FUNC4(sizeof(*ph2c), GFP_ATOMIC);
		if (!ph2c) {
			res = _FAIL;
			goto exit;
		}

		psetstakey_para = FUNC4(sizeof(*psetstakey_para), GFP_ATOMIC);
		if (!psetstakey_para) {
			FUNC3(ph2c);
			res = _FAIL;
			goto exit;
		}

		psetstakey_rsp = FUNC4(sizeof(*psetstakey_rsp), GFP_ATOMIC);
		if (!psetstakey_rsp) {
			FUNC3(ph2c);
			FUNC3(psetstakey_para);
			res = _FAIL;
			goto exit;
		}

		FUNC2(ph2c, psetstakey_para, _SetStaKey_CMD_);
		ph2c->rsp = (u8 *)psetstakey_rsp;
		ph2c->rspsz = sizeof(struct set_stakey_rsp);

		FUNC1(psetstakey_para->addr, sta->hwaddr);

		psetstakey_para->algorithm = _NO_PRIVACY_;

		psetstakey_para->id = entry;

		res = FUNC5(pcmdpriv, ph2c);
	}
exit:

	return res;
}