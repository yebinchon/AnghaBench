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
struct mlme_priv {int /*<<< orphan*/  lock; } ;
struct cmd_obj {scalar_t__ res; } ;
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 scalar_t__ H2C_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  _drv_err_ ; 
 int /*<<< orphan*/  _module_rtl871x_cmd_c_ ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_obj*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct adapter *padapter,  struct cmd_obj *pcmd)
{
	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;

	if (pcmd->res != H2C_SUCCESS) {
		FUNC3(&pmlmepriv->lock);
		FUNC2(pmlmepriv, _FW_LINKED);
		FUNC4(&pmlmepriv->lock);

		FUNC0(_module_rtl871x_cmd_c_, _drv_err_, ("\n ***Error: disconnect_cmd_callback Fail ***\n."));
		return;
	}
	/*  free cmd */
	FUNC1(pcmd);
}