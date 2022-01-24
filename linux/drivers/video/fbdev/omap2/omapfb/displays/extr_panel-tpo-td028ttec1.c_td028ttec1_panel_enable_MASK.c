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
struct panel_drv_data {int /*<<< orphan*/  videomode; scalar_t__ data_lines; struct omap_dss_device* in; } ;
struct TYPE_4__ {TYPE_1__* dpi; } ;
struct omap_dss_device {int /*<<< orphan*/  state; int /*<<< orphan*/  dev; TYPE_2__ ops; } ;
struct TYPE_3__ {int (* enable ) (struct omap_dss_device*) ;int /*<<< orphan*/  (* set_timings ) (struct omap_dss_device*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* set_data_lines ) (struct omap_dss_device*,scalar_t__) ;} ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  JBT_REG_ASW_SLEW ; 
 int /*<<< orphan*/  JBT_REG_ASW_TIMING_1 ; 
 int /*<<< orphan*/  JBT_REG_ASW_TIMING_2 ; 
 int /*<<< orphan*/  JBT_REG_BLANK_CONTROL ; 
 int /*<<< orphan*/  JBT_REG_BLANK_TH_TV ; 
 int /*<<< orphan*/  JBT_REG_BOOSTER_FREQ ; 
 int /*<<< orphan*/  JBT_REG_BOOSTER_MODE ; 
 int /*<<< orphan*/  JBT_REG_BOOSTER_OP ; 
 int /*<<< orphan*/  JBT_REG_CKV_1_2 ; 
 int /*<<< orphan*/  JBT_REG_CKV_ON_OFF ; 
 int /*<<< orphan*/  JBT_REG_DCCLK_DCEV ; 
 int /*<<< orphan*/  JBT_REG_DISPLAY_MODE ; 
 int /*<<< orphan*/  JBT_REG_DISPLAY_MODE1 ; 
 int /*<<< orphan*/  JBT_REG_DISPLAY_MODE2 ; 
 int JBT_REG_DISPLAY_ON ; 
 int /*<<< orphan*/  JBT_REG_DRIVE_SYSTEM ; 
 int /*<<< orphan*/  JBT_REG_DUMMY_DISPLAY ; 
 int /*<<< orphan*/  JBT_REG_EXT_DISPL ; 
 int /*<<< orphan*/  JBT_REG_GAMMA1_BLUE_OFFSET ; 
 int /*<<< orphan*/  JBT_REG_GAMMA1_FINE_1 ; 
 int /*<<< orphan*/  JBT_REG_GAMMA1_FINE_2 ; 
 int /*<<< orphan*/  JBT_REG_GAMMA1_INCLINATION ; 
 int /*<<< orphan*/  JBT_REG_HCLOCK_VGA ; 
 int /*<<< orphan*/  JBT_REG_OEV_TIMING ; 
 int /*<<< orphan*/  JBT_REG_OPAMP_SYSCLK ; 
 int /*<<< orphan*/  JBT_REG_OUTPUT_CONTROL ; 
 int /*<<< orphan*/  JBT_REG_POWER_ON_OFF ; 
 int /*<<< orphan*/  JBT_REG_QUAD_RATE ; 
 int /*<<< orphan*/  JBT_REG_RGB_FORMAT ; 
 int /*<<< orphan*/  JBT_REG_SLEEP_IN_LCCNT_D ; 
 int /*<<< orphan*/  JBT_REG_SLEEP_IN_LCCNT_E ; 
 int /*<<< orphan*/  JBT_REG_SLEEP_IN_LCCNT_F ; 
 int /*<<< orphan*/  JBT_REG_SLEEP_IN_LCCNT_G ; 
 int JBT_REG_SLEEP_OUT ; 
 int /*<<< orphan*/  JBT_REG_SLEEP_OUT_FR_A ; 
 int /*<<< orphan*/  JBT_REG_SLEEP_OUT_FR_B ; 
 int /*<<< orphan*/  JBT_REG_SLEEP_OUT_FR_C ; 
 int /*<<< orphan*/  JBT_REG_VCOM_VOLTAGE ; 
 int /*<<< orphan*/  JBT_REG_VSC_VOLTAGE ; 
 int /*<<< orphan*/  OMAP_DSS_DISPLAY_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct panel_drv_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct panel_drv_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct panel_drv_data*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_dss_device*) ; 
 scalar_t__ FUNC6 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_dss_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_dss_device*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct omap_dss_device*) ; 
 struct panel_drv_data* FUNC10 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static int FUNC12(struct omap_dss_device *dssdev)
{
	struct panel_drv_data *ddata = FUNC10(dssdev);
	struct omap_dss_device *in = ddata->in;
	int r;

	if (!FUNC5(dssdev))
		return -ENODEV;

	if (FUNC6(dssdev))
		return 0;

	if (ddata->data_lines)
		in->ops.dpi->set_data_lines(in, ddata->data_lines);
	in->ops.dpi->set_timings(in, &ddata->videomode);

	r = in->ops.dpi->enable(in);
	if (r)
		return r;

	FUNC0(dssdev->dev, "td028ttec1_panel_enable() - state %d\n",
		dssdev->state);

	/* three times command zero */
	r |= FUNC4(ddata, 0x00);
	FUNC11(1000, 2000);
	r |= FUNC4(ddata, 0x00);
	FUNC11(1000, 2000);
	r |= FUNC4(ddata, 0x00);
	FUNC11(1000, 2000);

	if (r) {
		FUNC1(dssdev->dev, "transfer error\n");
		goto transfer_err;
	}

	/* deep standby out */
	r |= FUNC2(ddata, JBT_REG_POWER_ON_OFF, 0x17);

	/* RGB I/F on, RAM write off, QVGA through, SIGCON enable */
	r |= FUNC2(ddata, JBT_REG_DISPLAY_MODE, 0x80);

	/* Quad mode off */
	r |= FUNC2(ddata, JBT_REG_QUAD_RATE, 0x00);

	/* AVDD on, XVDD on */
	r |= FUNC2(ddata, JBT_REG_POWER_ON_OFF, 0x16);

	/* Output control */
	r |= FUNC3(ddata, JBT_REG_OUTPUT_CONTROL, 0xfff9);

	/* Sleep mode off */
	r |= FUNC4(ddata, JBT_REG_SLEEP_OUT);

	/* at this point we have like 50% grey */

	/* initialize register set */
	r |= FUNC2(ddata, JBT_REG_DISPLAY_MODE1, 0x01);
	r |= FUNC2(ddata, JBT_REG_DISPLAY_MODE2, 0x00);
	r |= FUNC2(ddata, JBT_REG_RGB_FORMAT, 0x60);
	r |= FUNC2(ddata, JBT_REG_DRIVE_SYSTEM, 0x10);
	r |= FUNC2(ddata, JBT_REG_BOOSTER_OP, 0x56);
	r |= FUNC2(ddata, JBT_REG_BOOSTER_MODE, 0x33);
	r |= FUNC2(ddata, JBT_REG_BOOSTER_FREQ, 0x11);
	r |= FUNC2(ddata, JBT_REG_BOOSTER_FREQ, 0x11);
	r |= FUNC2(ddata, JBT_REG_OPAMP_SYSCLK, 0x02);
	r |= FUNC2(ddata, JBT_REG_VSC_VOLTAGE, 0x2b);
	r |= FUNC2(ddata, JBT_REG_VCOM_VOLTAGE, 0x40);
	r |= FUNC2(ddata, JBT_REG_EXT_DISPL, 0x03);
	r |= FUNC2(ddata, JBT_REG_DCCLK_DCEV, 0x04);
	/*
	 * default of 0x02 in JBT_REG_ASW_SLEW responsible for 72Hz requirement
	 * to avoid red / blue flicker
	 */
	r |= FUNC2(ddata, JBT_REG_ASW_SLEW, 0x04);
	r |= FUNC2(ddata, JBT_REG_DUMMY_DISPLAY, 0x00);

	r |= FUNC2(ddata, JBT_REG_SLEEP_OUT_FR_A, 0x11);
	r |= FUNC2(ddata, JBT_REG_SLEEP_OUT_FR_B, 0x11);
	r |= FUNC2(ddata, JBT_REG_SLEEP_OUT_FR_C, 0x11);
	r |= FUNC3(ddata, JBT_REG_SLEEP_IN_LCCNT_D, 0x2040);
	r |= FUNC3(ddata, JBT_REG_SLEEP_IN_LCCNT_E, 0x60c0);
	r |= FUNC3(ddata, JBT_REG_SLEEP_IN_LCCNT_F, 0x1020);
	r |= FUNC3(ddata, JBT_REG_SLEEP_IN_LCCNT_G, 0x60c0);

	r |= FUNC3(ddata, JBT_REG_GAMMA1_FINE_1, 0x5533);
	r |= FUNC2(ddata, JBT_REG_GAMMA1_FINE_2, 0x00);
	r |= FUNC2(ddata, JBT_REG_GAMMA1_INCLINATION, 0x00);
	r |= FUNC2(ddata, JBT_REG_GAMMA1_BLUE_OFFSET, 0x00);

	r |= FUNC3(ddata, JBT_REG_HCLOCK_VGA, 0x1f0);
	r |= FUNC2(ddata, JBT_REG_BLANK_CONTROL, 0x02);
	r |= FUNC3(ddata, JBT_REG_BLANK_TH_TV, 0x0804);

	r |= FUNC2(ddata, JBT_REG_CKV_ON_OFF, 0x01);
	r |= FUNC3(ddata, JBT_REG_CKV_1_2, 0x0000);

	r |= FUNC3(ddata, JBT_REG_OEV_TIMING, 0x0d0e);
	r |= FUNC3(ddata, JBT_REG_ASW_TIMING_1, 0x11a4);
	r |= FUNC2(ddata, JBT_REG_ASW_TIMING_2, 0x0e);

	r |= FUNC4(ddata, JBT_REG_DISPLAY_ON);

	dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;

transfer_err:

	return r ? -EIO : 0;
}