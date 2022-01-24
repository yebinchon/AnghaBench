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
struct mlme_priv {int to_join; int /*<<< orphan*/  dhcp_timer; } ;
struct TYPE_4__ {scalar_t__ power_mgnt; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* LedControlHandler ) (struct _adapter*,int /*<<< orphan*/ ) ;} ;
struct _adapter {TYPE_2__ registrypriv; TYPE_1__ ledpriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_CTL_LINK ; 
 scalar_t__ PS_MODE_ACTIVE ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*,int /*<<< orphan*/ ) ; 

void FUNC5(struct _adapter *padapter)
{
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

	pmlmepriv->to_join = false;
	FUNC3(pmlmepriv, _FW_LINKED);
	padapter->ledpriv.LedControlHandler(padapter, LED_CTL_LINK);
	FUNC2(padapter);
	if (padapter->registrypriv.power_mgnt > PS_MODE_ACTIVE)
		FUNC0(&pmlmepriv->dhcp_timer,
			  jiffies + FUNC1(60000));
}