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
typedef  int /*<<< orphan*/  sint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  _SetAuth_CMD_ ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_rtl871x_mlme_c_ ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_priv*,struct cmd_obj*) ; 
 void* FUNC4 (int) ; 

sint FUNC5(struct adapter *adapter, struct security_priv *psecuritypriv)
{
	struct	cmd_obj *pcmd;
	struct	setauth_parm *psetauthparm;
	struct	cmd_priv *pcmdpriv = &(adapter->cmdpriv);
	sint		res = _SUCCESS;

	pcmd = FUNC4(sizeof(struct cmd_obj));
	if (pcmd == NULL) {
		res = _FAIL;  /* try again */
		goto exit;
	}

	psetauthparm = FUNC4(sizeof(struct setauth_parm));
	if (psetauthparm == NULL) {
		FUNC2((unsigned char *)pcmd);
		res = _FAIL;
		goto exit;
	}

	psetauthparm->mode = (unsigned char)psecuritypriv->dot11AuthAlgrthm;

	pcmd->cmdcode = _SetAuth_CMD_;
	pcmd->parmbuf = (unsigned char *)psetauthparm;
	pcmd->cmdsz =  (sizeof(struct setauth_parm));
	pcmd->rsp = NULL;
	pcmd->rspsz = 0;


	FUNC0(&pcmd->list);

	FUNC1(_module_rtl871x_mlme_c_, _drv_err_, ("after enqueue set_auth_cmd, auth_mode =%x\n", psecuritypriv->dot11AuthAlgrthm));

	res = FUNC3(pcmdpriv, pcmd);

exit:
	return res;
}