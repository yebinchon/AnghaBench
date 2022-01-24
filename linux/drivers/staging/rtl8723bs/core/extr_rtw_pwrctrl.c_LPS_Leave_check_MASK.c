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
struct pwrctrl_priv {scalar_t__ pwr_mode; int /*<<< orphan*/  lock; } ;
struct adapter {int /*<<< orphan*/  hw_init_completed; scalar_t__ bSurpriseRemoved; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ PS_MODE_ACTIVE ; 
 struct pwrctrl_priv* FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long jiffies ; 
 int FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(
	struct adapter *padapter)
{
	struct pwrctrl_priv *pwrpriv;
	unsigned long	start_time;
	u8 bReady;

	pwrpriv = FUNC1(padapter);

	bReady = false;
	start_time = jiffies;

	FUNC2();

	while (1) {
		FUNC5(&pwrpriv->lock);

		if (padapter->bSurpriseRemoved
			|| !(padapter->hw_init_completed)
			|| (pwrpriv->pwr_mode == PS_MODE_ACTIVE))
			bReady = true;

		FUNC6(&pwrpriv->lock);

		if (bReady)
			break;

		if (FUNC3(jiffies - start_time) > 100) {
			FUNC0("Wait for cpwm event  than 100 ms!!!\n");
			break;
		}
		FUNC4(1);
	}
}