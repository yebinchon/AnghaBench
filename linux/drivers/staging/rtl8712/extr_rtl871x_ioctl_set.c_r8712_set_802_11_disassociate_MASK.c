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
typedef  int u8 ;
struct mlme_priv {int /*<<< orphan*/  lock; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  _FW_LINKED ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

u8 FUNC6(struct _adapter *padapter)
{
	unsigned long irqL;
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

	FUNC4(&pmlmepriv->lock, irqL);
	if (FUNC0(pmlmepriv, _FW_LINKED)) {
		FUNC1(padapter);
		FUNC3(padapter);
		FUNC2(padapter);
	}
	FUNC5(&pmlmepriv->lock, irqL);
	return true;
}