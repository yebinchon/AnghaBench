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
struct pwrctrl_priv {scalar_t__ pwr_mode; int bpower_saving; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int) ; 
 scalar_t__ PS_MODE_ACTIVE ; 
 struct pwrctrl_priv* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct adapter *padapter)
{
	struct pwrctrl_priv *pwrpriv;


	pwrpriv = FUNC1(padapter);

	if (pwrpriv->pwr_mode != PS_MODE_ACTIVE) {
		FUNC2(padapter, PS_MODE_ACTIVE, 0, 0, "BTCOEX");
		FUNC0(padapter, 100);
		pwrpriv->bpower_saving = false;
	}
}