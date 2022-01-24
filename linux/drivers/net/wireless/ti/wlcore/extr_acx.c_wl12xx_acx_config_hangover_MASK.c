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
struct wl12xx_acx_config_hangover {int /*<<< orphan*/  window_size; int /*<<< orphan*/  increase_time; int /*<<< orphan*/  quiet_time; int /*<<< orphan*/  decrease_delta; int /*<<< orphan*/  increase_delta; int /*<<< orphan*/  min_period; int /*<<< orphan*/  max_period; int /*<<< orphan*/  early_termination_mode; int /*<<< orphan*/  dynamic_mode; int /*<<< orphan*/  hangover_period; int /*<<< orphan*/  recover_time; } ;
struct conf_hangover_settings {int /*<<< orphan*/  window_size; int /*<<< orphan*/  increase_time; int /*<<< orphan*/  quiet_time; int /*<<< orphan*/  decrease_delta; int /*<<< orphan*/  increase_delta; int /*<<< orphan*/  min_period; int /*<<< orphan*/  max_period; int /*<<< orphan*/  early_termination_mode; int /*<<< orphan*/  dynamic_mode; int /*<<< orphan*/  hangover_period; int /*<<< orphan*/  recover_time; } ;
struct TYPE_2__ {struct conf_hangover_settings hangover; } ;
struct wl1271 {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_CONFIG_HANGOVER ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl12xx_acx_config_hangover*) ; 
 struct wl12xx_acx_config_hangover* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct wl12xx_acx_config_hangover*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl)
{
	struct wl12xx_acx_config_hangover *acx;
	struct conf_hangover_settings *conf = &wl->conf.hangover;
	int ret;

	FUNC4(DEBUG_ACX, "acx config hangover");

	acx = FUNC2(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->recover_time = FUNC0(conf->recover_time);
	acx->hangover_period = conf->hangover_period;
	acx->dynamic_mode = conf->dynamic_mode;
	acx->early_termination_mode = conf->early_termination_mode;
	acx->max_period = conf->max_period;
	acx->min_period = conf->min_period;
	acx->increase_delta = conf->increase_delta;
	acx->decrease_delta = conf->decrease_delta;
	acx->quiet_time = conf->quiet_time;
	acx->increase_time = conf->increase_time;
	acx->window_size = conf->window_size;

	ret = FUNC3(wl, ACX_CONFIG_HANGOVER, acx,
				   sizeof(*acx));

	if (ret < 0) {
		FUNC5("acx config hangover failed: %d", ret);
		goto out;
	}

out:
	FUNC1(acx);
	return ret;

}