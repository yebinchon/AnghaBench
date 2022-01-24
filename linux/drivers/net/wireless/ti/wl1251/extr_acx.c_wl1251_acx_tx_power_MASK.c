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
struct wl1251 {int dummy; } ;
struct acx_current_tx_power {int current_tx_power; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_ACX ; 
 int /*<<< orphan*/  DOT11_CUR_TX_PWR ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_current_tx_power*) ; 
 struct acx_current_tx_power* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_current_tx_power*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl, int power)
{
	struct acx_current_tx_power *acx;
	int ret;

	FUNC3(DEBUG_ACX, "acx dot11_cur_tx_pwr");

	if (power < 0 || power > 25)
		return -EINVAL;

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx)
		return -ENOMEM;

	acx->current_tx_power = power * 10;

	ret = FUNC2(wl, DOT11_CUR_TX_PWR, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC4("configure of tx power failed: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}