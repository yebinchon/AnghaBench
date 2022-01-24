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
struct _adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 scalar_t__ H2C_SUCCESS ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  FUNC0 (struct cmd_obj*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct _adapter *padapter,
				 struct cmd_obj *pcmd)
{
	unsigned long irqL;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

	if (pcmd->res != H2C_SUCCESS) {
		FUNC2(&pmlmepriv->lock, irqL);
		FUNC1(pmlmepriv, _FW_LINKED);
		FUNC3(&pmlmepriv->lock, irqL);
		return;
	}
	FUNC0(pcmd);
}