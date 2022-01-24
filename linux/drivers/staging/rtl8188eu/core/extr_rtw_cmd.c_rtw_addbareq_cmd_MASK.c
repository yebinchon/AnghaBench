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
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  _AddBAReq_CMD_ ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct cmd_obj*,struct addBaReq_parm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_obj*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_priv*,struct cmd_obj*) ; 

u8 FUNC5(struct adapter *padapter, u8 tid, u8 *addr)
{
	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
	struct cmd_obj *ph2c;
	struct addBaReq_parm *paddbareq_parm;
	u8	res = _SUCCESS;

	ph2c = FUNC2(sizeof(*ph2c), GFP_ATOMIC);
	if (!ph2c) {
		res = _FAIL;
		goto exit;
	}

	paddbareq_parm = FUNC2(sizeof(*paddbareq_parm), GFP_ATOMIC);
	if (!paddbareq_parm) {
		FUNC1(ph2c);
		res = _FAIL;
		goto exit;
	}

	paddbareq_parm->tid = tid;
	FUNC3(paddbareq_parm->addr, addr, ETH_ALEN);

	FUNC0(ph2c, paddbareq_parm, _AddBAReq_CMD_);

	res = FUNC4(pcmdpriv, ph2c);

exit:

	return res;
}