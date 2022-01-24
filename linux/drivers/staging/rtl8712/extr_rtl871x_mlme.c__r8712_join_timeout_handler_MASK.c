#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlme_priv {int to_join; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {scalar_t__ power_mgnt; int /*<<< orphan*/  smart_ps; } ;
struct TYPE_3__ {scalar_t__ pwr_mode; } ;
struct _adapter {TYPE_2__ registrypriv; TYPE_1__ pwrctrlpriv; scalar_t__ surprise_removed; scalar_t__ driver_stopped; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  _FW_LINKED ; 
 int /*<<< orphan*/  _FW_UNDER_LINKING ; 
 int /*<<< orphan*/  FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct _adapter *adapter)
{
	unsigned long irqL;
	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;

	if (adapter->driver_stopped || adapter->surprise_removed)
		return;
	FUNC4(&pmlmepriv->lock, irqL);
	FUNC0(pmlmepriv, _FW_UNDER_LINKING);
	pmlmepriv->to_join = false;
	if (FUNC1(pmlmepriv, _FW_LINKED)) {
		FUNC2(adapter);
		FUNC0(pmlmepriv, _FW_LINKED);
	}
	if (adapter->pwrctrlpriv.pwr_mode != adapter->registrypriv.power_mgnt) {
		FUNC3(adapter, adapter->registrypriv.power_mgnt,
				  adapter->registrypriv.smart_ps);
	}
	FUNC5(&pmlmepriv->lock, irqL);
}