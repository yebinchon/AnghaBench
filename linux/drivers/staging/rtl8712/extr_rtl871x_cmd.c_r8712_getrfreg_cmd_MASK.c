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
struct readRF_rsp {int dummy; } ;
struct readRF_parm {int /*<<< orphan*/  offset; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {unsigned char* parmbuf; int cmdsz; int rspsz; int /*<<< orphan*/ * rsp; int /*<<< orphan*/  cmdcode; int /*<<< orphan*/  list; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _GetRFReg ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_obj*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_priv*,struct cmd_obj*) ; 

int FUNC5(struct _adapter *padapter, u8 offset, u8 *pval)
{
	struct cmd_obj *ph2c;
	struct readRF_parm *prdrfparm;
	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

	ph2c = FUNC3(sizeof(*ph2c), GFP_ATOMIC);
	if (!ph2c)
		return -ENOMEM;
	prdrfparm = FUNC3(sizeof(*prdrfparm), GFP_ATOMIC);
	if (!prdrfparm) {
		FUNC2(ph2c);
		return -ENOMEM;
	}
	FUNC1(&ph2c->list);
	ph2c->cmdcode = FUNC0(_GetRFReg);
	ph2c->parmbuf = (unsigned char *)prdrfparm;
	ph2c->cmdsz =  sizeof(struct readRF_parm);
	ph2c->rsp = pval;
	ph2c->rspsz = sizeof(struct readRF_rsp);
	prdrfparm->offset = offset;
	FUNC4(pcmdpriv, ph2c);
	return 0;
}