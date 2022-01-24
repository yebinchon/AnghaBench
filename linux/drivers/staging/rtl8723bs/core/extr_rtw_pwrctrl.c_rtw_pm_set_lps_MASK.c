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
typedef  scalar_t__ u8 ;
struct pwrctrl_priv {scalar_t__ power_mgnt; int LpsIdleCount; int bLeisurePs; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 scalar_t__ PS_MODE_ACTIVE ; 
 scalar_t__ PS_MODE_NUM ; 
 struct pwrctrl_priv* FUNC1 (struct adapter*) ; 

int FUNC2(struct adapter *padapter, u8 mode)
{
	int	ret = 0;
	struct pwrctrl_priv *pwrctrlpriv = FUNC1(padapter);

	if (mode < PS_MODE_NUM) {
		if (pwrctrlpriv->power_mgnt != mode) {
			if (PS_MODE_ACTIVE == mode)
				FUNC0(padapter);
			else
				pwrctrlpriv->LpsIdleCount = 2;

			pwrctrlpriv->power_mgnt = mode;
			pwrctrlpriv->bLeisurePs =
				pwrctrlpriv->power_mgnt != PS_MODE_ACTIVE;
		}
	} else
		ret = -EINVAL;

	return ret;
}