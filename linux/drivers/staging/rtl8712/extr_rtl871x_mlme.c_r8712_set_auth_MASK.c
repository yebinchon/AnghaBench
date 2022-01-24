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
typedef  scalar_t__ u8 ;
struct setauth_parm {scalar_t__ mode; } ;
struct security_priv {scalar_t__ AuthAlgrthm; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {unsigned char* parmbuf; int cmdsz; int /*<<< orphan*/  list; scalar_t__ rspsz; int /*<<< orphan*/ * rsp; int /*<<< orphan*/  cmdcode; } ;
struct _adapter {struct cmd_priv cmdpriv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _SetAuth_CMD_ ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_obj*) ; 
 struct cmd_obj* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct setauth_parm* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_priv*,struct cmd_obj*) ; 

int FUNC5(struct _adapter *adapter,
		   struct security_priv *psecuritypriv)
{
	struct cmd_priv	*pcmdpriv = &adapter->cmdpriv;
	struct cmd_obj *pcmd;
	struct setauth_parm *psetauthparm;

	pcmd = FUNC2(sizeof(*pcmd), GFP_ATOMIC);
	if (!pcmd)
		return -ENOMEM;

	psetauthparm = FUNC3(sizeof(*psetauthparm), GFP_ATOMIC);
	if (!psetauthparm) {
		FUNC1(pcmd);
		return -ENOMEM;
	}
	psetauthparm->mode = (u8)psecuritypriv->AuthAlgrthm;
	pcmd->cmdcode = _SetAuth_CMD_;
	pcmd->parmbuf = (unsigned char *)psetauthparm;
	pcmd->cmdsz = sizeof(struct setauth_parm);
	pcmd->rsp = NULL;
	pcmd->rspsz = 0;
	FUNC0(&pcmd->list);
	FUNC4(pcmdpriv, pcmd);
	return 0;
}