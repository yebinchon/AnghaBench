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
struct wl1271 {int /*<<< orphan*/  dynamic_fw_traces; } ;
struct acx_dynamic_fw_traces_cfg {int /*<<< orphan*/  dynamic_fw_traces; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_DYNAMIC_TRACES_CFG ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_dynamic_fw_traces_cfg*) ; 
 struct acx_dynamic_fw_traces_cfg* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_dynamic_fw_traces_cfg*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl)
{
	struct acx_dynamic_fw_traces_cfg *acx;
	int ret;

	FUNC4(DEBUG_ACX, "acx dynamic fw traces config %d",
		     wl->dynamic_fw_traces);

	acx = FUNC2(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->dynamic_fw_traces = FUNC0(wl->dynamic_fw_traces);

	ret = FUNC3(wl, ACX_DYNAMIC_TRACES_CFG,
				   acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("acx config dynamic fw traces failed: %d", ret);
		goto out;
	}
out:
	FUNC1(acx);
	return ret;
}