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
struct pwrctrl_priv {scalar_t__ pwr_mode; int bpower_saving; scalar_t__ bLeisurePs; } ;
struct dvobj_priv {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPS_LEAVE_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ PS_MODE_ACTIVE ; 
 struct dvobj_priv* FUNC1 (struct adapter*) ; 
 struct pwrctrl_priv* FUNC2 (struct dvobj_priv*) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*) ; 

void FUNC6(struct adapter *padapter, const char *msg)
{
#define LPS_LEAVE_TIMEOUT_MS 100

	struct dvobj_priv *dvobj = FUNC1(padapter);
	struct pwrctrl_priv *pwrpriv = FUNC2(dvobj);
	char buf[32] = {0};

/* 	DBG_871X("+LeisurePSLeave\n"); */

	if (FUNC3(padapter))
		return;

	if (pwrpriv->bLeisurePs) {
		if (pwrpriv->pwr_mode != PS_MODE_ACTIVE) {
			FUNC5(buf, "WIFI-%s", msg);
			FUNC4(padapter, PS_MODE_ACTIVE, 0, 0, buf);

			if (pwrpriv->pwr_mode == PS_MODE_ACTIVE)
				FUNC0(padapter, LPS_LEAVE_TIMEOUT_MS);
		}
	}

	pwrpriv->bpower_saving = false;
/* 	DBG_871X("-LeisurePSLeave\n"); */

}