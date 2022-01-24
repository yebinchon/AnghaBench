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
struct cmd_priv {int dummy; } ;
struct cmd_obj {int dummy; } ;
struct addBaReq_parm {int /*<<< orphan*/  addr; int /*<<< orphan*/  tid; } ;
struct adapter {struct cmd_priv cmdpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _AddBAReq ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_obj*,struct addBaReq_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_obj*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_priv*,struct cmd_obj*) ; 
 void* FUNC5 (int) ; 

u8 FUNC6(struct adapter *padapter, u8 tid, u8 *addr)
{
	struct cmd_priv 	*pcmdpriv = &padapter->cmdpriv;
	struct cmd_obj *ph2c;
	struct addBaReq_parm	*paddbareq_parm;

	u8 res = _SUCCESS;

	ph2c = FUNC5(sizeof(struct cmd_obj));
	if (ph2c == NULL) {
		res = _FAIL;
		goto exit;
	}

	paddbareq_parm = FUNC5(sizeof(struct addBaReq_parm));
	if (paddbareq_parm == NULL) {
		FUNC2(ph2c);
		res = _FAIL;
		goto exit;
	}

	paddbareq_parm->tid = tid;
	FUNC3(paddbareq_parm->addr, addr, ETH_ALEN);

	FUNC1(ph2c, paddbareq_parm, FUNC0(_AddBAReq));

	/* DBG_871X("rtw_addbareq_cmd, tid =%d\n", tid); */

	/* rtw_enqueue_cmd(pcmdpriv, ph2c); */
	res = FUNC4(pcmdpriv, ph2c);

exit:
	return res;
}