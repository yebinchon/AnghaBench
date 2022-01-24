#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct conf_ap_sleep_settings {int /*<<< orphan*/  idle_conn_thresh; int /*<<< orphan*/  max_stations_thresh; int /*<<< orphan*/  connected_duty_cycle; int /*<<< orphan*/  idle_duty_cycle; } ;
struct TYPE_2__ {struct conf_ap_sleep_settings ap_sleep; } ;
struct wl18xx_priv {TYPE_1__ conf; } ;
struct wl1271 {struct wl18xx_priv* priv; } ;
struct acx_ap_sleep_cfg {int /*<<< orphan*/  idle_conn_thresh; int /*<<< orphan*/  max_stations_thresh; int /*<<< orphan*/  connected_duty_cycle; int /*<<< orphan*/  idle_duty_cycle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_AP_SLEEP_CFG ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_ap_sleep_cfg*) ; 
 struct acx_ap_sleep_cfg* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct acx_ap_sleep_cfg*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1271 *wl)
{
	struct wl18xx_priv *priv = wl->priv;
	struct acx_ap_sleep_cfg *acx;
	struct conf_ap_sleep_settings *conf = &priv->conf.ap_sleep;
	int ret;

	FUNC3(DEBUG_ACX, "acx config ap sleep");

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->idle_duty_cycle = conf->idle_duty_cycle;
	acx->connected_duty_cycle = conf->connected_duty_cycle;
	acx->max_stations_thresh = conf->max_stations_thresh;
	acx->idle_conn_thresh = conf->idle_conn_thresh;

	ret = FUNC2(wl, ACX_AP_SLEEP_CFG, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC4("acx config ap-sleep failed: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}