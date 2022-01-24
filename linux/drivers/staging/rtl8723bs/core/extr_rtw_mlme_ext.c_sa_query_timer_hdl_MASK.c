#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct mlme_priv {int /*<<< orphan*/  lock; } ;
struct adapter {struct mlme_priv mlmepriv; } ;
struct TYPE_2__ {int /*<<< orphan*/  sa_query_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 scalar_t__ FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 struct adapter* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 TYPE_1__ mlmeextpriv ; 
 struct adapter* padapter ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct timer_list *t)
{
	struct adapter *padapter =
		FUNC2(padapter, t, mlmeextpriv.sa_query_timer);
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
	/* disconnect */
	FUNC6(&pmlmepriv->lock);

	if (FUNC1(pmlmepriv, _FW_LINKED)) {
		FUNC3(padapter, 0, true);
		FUNC5(padapter);
		FUNC4(padapter, 1);
	}

	FUNC7(&pmlmepriv->lock);
	FUNC0("SA query timeout disconnect\n");
}