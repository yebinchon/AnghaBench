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
struct conf_itrim_settings {int /*<<< orphan*/  timeout; int /*<<< orphan*/  enable; } ;
struct TYPE_2__ {struct conf_itrim_settings itrim; } ;
struct wl1271 {TYPE_1__ conf; } ;
struct acx_dco_itrim_params {int /*<<< orphan*/  timeout; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_SET_DCO_ITRIM_PARAMS ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_dco_itrim_params*) ; 
 struct acx_dco_itrim_params* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_dco_itrim_params*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl)
{
	struct acx_dco_itrim_params *dco;
	struct conf_itrim_settings *c = &wl->conf.itrim;
	int ret;

	FUNC4(DEBUG_ACX, "acx dco itrim parameters");

	dco = FUNC2(sizeof(*dco), GFP_KERNEL);
	if (!dco) {
		ret = -ENOMEM;
		goto out;
	}

	dco->enable = c->enable;
	dco->timeout = FUNC0(c->timeout);

	ret = FUNC3(wl, ACX_SET_DCO_ITRIM_PARAMS,
				   dco, sizeof(*dco));
	if (ret < 0) {
		FUNC5("failed to set dco itrim parameters: %d", ret);
		goto out;
	}

out:
	FUNC1(dco);
	return ret;
}