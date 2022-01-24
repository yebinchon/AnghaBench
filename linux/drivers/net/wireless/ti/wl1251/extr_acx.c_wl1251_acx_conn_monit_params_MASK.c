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
struct acx_conn_monit_params {int /*<<< orphan*/  bss_lose_timeout; int /*<<< orphan*/  synch_fail_thold; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_CONN_MONIT_PARAMS ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NO_BEACON_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  SYNCH_FAIL_DEFAULT_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (struct acx_conn_monit_params*) ; 
 struct acx_conn_monit_params* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_conn_monit_params*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl)
{
	struct acx_conn_monit_params *acx;
	int ret;

	FUNC3(DEBUG_ACX, "acx connection monitor parameters");

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx)
		return -ENOMEM;

	acx->synch_fail_thold = SYNCH_FAIL_DEFAULT_THRESHOLD;
	acx->bss_lose_timeout = NO_BEACON_DEFAULT_TIMEOUT;

	ret = FUNC2(wl, ACX_CONN_MONIT_PARAMS,
				   acx, sizeof(*acx));
	if (ret < 0) {
		FUNC4("failed to set connection monitor "
			       "parameters: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}