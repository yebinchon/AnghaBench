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
typedef  int /*<<< orphan*/  u8 ;
struct wl1251_cmd_ps_params {int send_null_data; int retries; int hang_over_period; int null_data_rate; int /*<<< orphan*/  ps_mode; } ;
struct wl1251 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SET_PS_MODE ; 
 int /*<<< orphan*/  DEBUG_CMD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl1251_cmd_ps_params*) ; 
 struct wl1251_cmd_ps_params* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct wl1251_cmd_ps_params*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct wl1251 *wl, u8 ps_mode)
{
	struct wl1251_cmd_ps_params *ps_params = NULL;
	int ret = 0;

	FUNC3(DEBUG_CMD, "cmd set ps mode");

	ps_params = FUNC1(sizeof(*ps_params), GFP_KERNEL);
	if (!ps_params) {
		ret = -ENOMEM;
		goto out;
	}

	ps_params->ps_mode = ps_mode;
	ps_params->send_null_data = 1;
	ps_params->retries = 5;
	ps_params->hang_over_period = 128;
	ps_params->null_data_rate = 1; /* 1 Mbps */

	ret = FUNC2(wl, CMD_SET_PS_MODE, ps_params,
			      sizeof(*ps_params));
	if (ret < 0) {
		FUNC4("cmd set_ps_mode failed");
		goto out;
	}

out:
	FUNC0(ps_params);
	return ret;
}