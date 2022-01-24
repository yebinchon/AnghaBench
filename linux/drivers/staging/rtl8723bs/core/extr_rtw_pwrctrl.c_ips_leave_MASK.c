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
struct pwrctrl_priv {int /*<<< orphan*/  lock; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPS_NONE ; 
 int _SUCCESS ; 
 int FUNC0 (struct adapter*) ; 
 struct pwrctrl_priv* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct adapter *padapter)
{
	struct pwrctrl_priv *pwrpriv = FUNC1(padapter);
	int ret;

	if (!FUNC3(padapter))
		return _SUCCESS;

	FUNC4(&pwrpriv->lock);
	ret = FUNC0(padapter);
	FUNC5(&pwrpriv->lock);

	if (_SUCCESS == ret)
		FUNC2(padapter, IPS_NONE);

	return ret;
}