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
typedef  int /*<<< orphan*/  u32 ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int ddr_clk_always_on; } ;
struct dsi_data {int ulps_enabled; int num_lanes_supported; scalar_t__ mode; int /*<<< orphan*/  module_id; TYPE_2__ vm_timings; TYPE_1__* lanes; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_3__ {scalar_t__ function; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_CLK_CTRL ; 
 int /*<<< orphan*/  DSI_COMPLEXIO_CFG1 ; 
 int /*<<< orphan*/  DSI_COMPLEXIO_POWER_OFF ; 
 int /*<<< orphan*/  DSI_COMPLEXIO_POWER_ON ; 
 int /*<<< orphan*/  DSI_DSIPHY_CFG5 ; 
 scalar_t__ DSI_LANE_UNUSED ; 
 int /*<<< orphan*/  DSI_TIMING1 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 
 int FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 struct dsi_data* FUNC11 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (struct platform_device*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC23(struct platform_device *dsidev)
{
	struct dsi_data *dsi = FUNC11(dsidev);
	int r;
	u32 l;

	FUNC0("DSI CIO init starts");

	r = FUNC18(dsi->module_id, FUNC12(dsidev));
	if (r)
		return r;

	FUNC10(dsidev);

	/* A dummy read using the SCP interface to any DSIPHY register is
	 * required after DSIPHY reset to complete the reset of the DSI complex
	 * I/O. */
	FUNC14(dsidev, DSI_DSIPHY_CFG5);

	if (FUNC22(dsidev, DSI_DSIPHY_CFG5, 30, 1) != 1) {
		FUNC1("CIO SCP Clock domain not coming out of reset.\n");
		r = -EIO;
		goto err_scp_clk_dom;
	}

	r = FUNC15(dsidev);
	if (r)
		goto err_scp_clk_dom;

	/* set TX STOP MODE timer to maximum for this operation */
	l = FUNC14(dsidev, DSI_TIMING1);
	l = FUNC2(l, 1, 15, 15);	/* FORCE_TX_STOP_MODE_IO */
	l = FUNC2(l, 1, 14, 14);	/* STOP_STATE_X16_IO */
	l = FUNC2(l, 1, 13, 13);	/* STOP_STATE_X4_IO */
	l = FUNC2(l, 0x1fff, 12, 0);	/* STOP_STATE_COUNTER_IO */
	FUNC16(dsidev, DSI_TIMING1, l);

	if (dsi->ulps_enabled) {
		unsigned mask_p;
		int i;

		FUNC0("manual ulps exit\n");

		/* ULPS is exited by Mark-1 state for 1ms, followed by
		 * stop state. DSS HW cannot do this via the normal
		 * ULPS exit sequence, as after reset the DSS HW thinks
		 * that we are not in ULPS mode, and refuses to send the
		 * sequence. So we need to send the ULPS exit sequence
		 * manually by setting positive lines high and negative lines
		 * low for 1ms.
		 */

		mask_p = 0;

		for (i = 0; i < dsi->num_lanes_supported; ++i) {
			if (dsi->lanes[i].function == DSI_LANE_UNUSED)
				continue;
			mask_p |= 1 << i;
		}

		FUNC5(dsidev, mask_p, 0);
	}

	r = FUNC6(dsidev, DSI_COMPLEXIO_POWER_ON);
	if (r)
		goto err_cio_pwr;

	if (FUNC22(dsidev, DSI_COMPLEXIO_CFG1, 29, 1) != 1) {
		FUNC1("CIO PWR clock domain not coming out of reset.\n");
		r = -ENODEV;
		goto err_cio_pwr_dom;
	}

	FUNC13(dsidev, true);
	FUNC13(dsidev, false);
	FUNC3(dsidev, DSI_CLK_CTRL, 1, 20, 20); /* LP_CLK_ENABLE */

	r = FUNC8(dsidev);
	if (r)
		goto err_tx_clk_esc_rst;

	if (dsi->ulps_enabled) {
		/* Keep Mark-1 state for 1ms (as per DSI spec) */
		ktime_t wait = FUNC19(1000 * 1000);
		FUNC21(TASK_UNINTERRUPTIBLE);
		FUNC20(&wait, HRTIMER_MODE_REL);

		/* Disable the override. The lanes should be set to Mark-11
		 * state by the HW */
		FUNC4(dsidev);
	}

	/* FORCE_TX_STOP_MODE_IO */
	FUNC3(dsidev, DSI_TIMING1, 0, 15, 15);

	FUNC7(dsidev);

	if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
		/* DDR_CLK_ALWAYS_ON */
		FUNC3(dsidev, DSI_CLK_CTRL,
			dsi->vm_timings.ddr_clk_always_on, 13, 13);
	}

	dsi->ulps_enabled = false;

	FUNC0("CIO init done\n");

	return 0;

err_tx_clk_esc_rst:
	FUNC3(dsidev, DSI_CLK_CTRL, 0, 20, 20); /* LP_CLK_ENABLE */
err_cio_pwr_dom:
	FUNC6(dsidev, DSI_COMPLEXIO_POWER_OFF);
err_cio_pwr:
	if (dsi->ulps_enabled)
		FUNC4(dsidev);
err_scp_clk_dom:
	FUNC9(dsidev);
	FUNC17(dsi->module_id, FUNC12(dsidev));
	return r;
}