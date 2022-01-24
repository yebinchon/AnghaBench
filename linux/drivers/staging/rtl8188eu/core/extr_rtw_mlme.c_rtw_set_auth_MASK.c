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
struct setauth_parm {unsigned char mode; } ;
struct security_priv {scalar_t__ dot11AuthAlgrthm; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {unsigned char* parmbuf; int cmdsz; int /*<<< orphan*/  list; scalar_t__ rspsz; int /*<<< orphan*/ * rsp; int /*<<< orphan*/  cmdcode; } ;
struct adapter {struct cmd_priv cmdpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int _FAIL ; 
 int _SUCCESS ; 
 int /*<<< orphan*/  _SetAuth_CMD_ ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_rtl871x_mlme_c_ ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_obj*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cmd_priv*,struct cmd_obj*) ; 

int FUNC5(struct adapter *adapter, struct security_priv *psecuritypriv)
{
	struct cmd_obj *pcmd;
	struct setauth_parm *psetauthparm;
	struct cmd_priv *pcmdpriv = &adapter->cmdpriv;
	int res = _SUCCESS;

	pcmd = FUNC3(sizeof(struct cmd_obj), GFP_KERNEL);
	if (!pcmd) {
		res = _FAIL;  /* try again */
		goto exit;
	}

	psetauthparm = FUNC3(sizeof(struct setauth_parm), GFP_KERNEL);
	if (!psetauthparm) {
		FUNC2(pcmd);
		res = _FAIL;
		goto exit;
	}
	psetauthparm->mode = (unsigned char)psecuritypriv->dot11AuthAlgrthm;
	pcmd->cmdcode = _SetAuth_CMD_;
	pcmd->parmbuf = (unsigned char *)psetauthparm;
	pcmd->cmdsz =  sizeof(struct setauth_parm);
	pcmd->rsp = NULL;
	pcmd->rspsz = 0;
	FUNC0(&pcmd->list);
	FUNC1(_module_rtl871x_mlme_c_, _drv_err_,
		 ("after enqueue set_auth_cmd, auth_mode=%x\n",
		 psecuritypriv->dot11AuthAlgrthm));
	res = FUNC4(pcmdpriv, pcmd);
exit:
	return res;
}