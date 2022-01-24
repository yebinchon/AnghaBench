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
struct pwrctrl_priv {scalar_t__ rf_pwrstate; int bips_processing; int bkeepfwalive; int bpower_saving; int /*<<< orphan*/  ips_leave_cnts; void* change_rfpwrstate; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int _SUCCESS ; 
 struct pwrctrl_priv* FUNC1 (struct adapter*) ; 
 scalar_t__ rf_off ; 
 void* rf_on ; 
 int FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int) ; 

int FUNC4(struct adapter *padapter)
{
	struct pwrctrl_priv *pwrpriv = FUNC1(padapter);
	int result = _SUCCESS;

	if ((pwrpriv->rf_pwrstate == rf_off) && (!pwrpriv->bips_processing)) {
		pwrpriv->bips_processing = true;
		pwrpriv->change_rfpwrstate = rf_on;
		pwrpriv->ips_leave_cnts++;
		FUNC0("==>ips_leave cnts:%d\n", pwrpriv->ips_leave_cnts);

		result = FUNC2(padapter);
		if (result == _SUCCESS) {
			pwrpriv->rf_pwrstate = rf_on;
		}
		FUNC0("nolinked power save leave\n");

		FUNC0("==> ips_leave.....LED(0x%08x)...\n", FUNC3(padapter, 0x4c));
		pwrpriv->bips_processing = false;

		pwrpriv->bkeepfwalive = false;
		pwrpriv->bpower_saving = false;
	}

	return result;
}