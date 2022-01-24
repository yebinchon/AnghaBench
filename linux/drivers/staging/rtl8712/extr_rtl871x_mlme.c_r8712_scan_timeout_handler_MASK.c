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
struct mlme_priv {int to_join; int /*<<< orphan*/  lock; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  _FW_UNDER_SURVEY ; 
 int /*<<< orphan*/  FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3 (struct _adapter *adapter)
{
	unsigned long irqL;
	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;

	FUNC1(&pmlmepriv->lock, irqL);
	FUNC0(pmlmepriv, _FW_UNDER_SURVEY);
	pmlmepriv->to_join = false;	/* scan fail, so clear to_join flag */
	FUNC2(&pmlmepriv->lock, irqL);
}