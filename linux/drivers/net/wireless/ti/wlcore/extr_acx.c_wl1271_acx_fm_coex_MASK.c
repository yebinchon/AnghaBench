#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wl1271_acx_fm_coex {int /*<<< orphan*/  swallow_clk_diff; int /*<<< orphan*/  fm_disturbed_band_margin; void* ldo_stabilization_time; int /*<<< orphan*/  coex_pll_stabilization_time; void* m_divider_fref_set_2; void* m_divider_fref_set_1; int /*<<< orphan*/  n_divider_fref_set_2; int /*<<< orphan*/  n_divider_fref_set_1; int /*<<< orphan*/  swallow_period; int /*<<< orphan*/  enable; } ;
struct TYPE_3__ {int /*<<< orphan*/  swallow_clk_diff; int /*<<< orphan*/  fm_disturbed_band_margin; int /*<<< orphan*/  ldo_stabilization_time; int /*<<< orphan*/  coex_pll_stabilization_time; int /*<<< orphan*/  m_divider_fref_set_2; int /*<<< orphan*/  m_divider_fref_set_1; int /*<<< orphan*/  n_divider_fref_set_2; int /*<<< orphan*/  n_divider_fref_set_1; int /*<<< orphan*/  swallow_period; int /*<<< orphan*/  enable; } ;
struct TYPE_4__ {TYPE_1__ fm_coex; } ;
struct wl1271 {TYPE_2__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_FM_COEX_CFG ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1271_acx_fm_coex*) ; 
 struct wl1271_acx_fm_coex* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_acx_fm_coex*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

int FUNC7(struct wl1271 *wl)
{
	struct wl1271_acx_fm_coex *acx;
	int ret;

	FUNC5(DEBUG_ACX, "acx fm coex setting");

	acx = FUNC3(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->enable = wl->conf.fm_coex.enable;
	acx->swallow_period = wl->conf.fm_coex.swallow_period;
	acx->n_divider_fref_set_1 = wl->conf.fm_coex.n_divider_fref_set_1;
	acx->n_divider_fref_set_2 = wl->conf.fm_coex.n_divider_fref_set_2;
	acx->m_divider_fref_set_1 =
		FUNC0(wl->conf.fm_coex.m_divider_fref_set_1);
	acx->m_divider_fref_set_2 =
		FUNC0(wl->conf.fm_coex.m_divider_fref_set_2);
	acx->coex_pll_stabilization_time =
		FUNC1(wl->conf.fm_coex.coex_pll_stabilization_time);
	acx->ldo_stabilization_time =
		FUNC0(wl->conf.fm_coex.ldo_stabilization_time);
	acx->fm_disturbed_band_margin =
		wl->conf.fm_coex.fm_disturbed_band_margin;
	acx->swallow_clk_diff = wl->conf.fm_coex.swallow_clk_diff;

	ret = FUNC4(wl, ACX_FM_COEX_CFG, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC6("acx fm coex setting failed: %d", ret);
		goto out;
	}

out:
	FUNC2(acx);
	return ret;
}