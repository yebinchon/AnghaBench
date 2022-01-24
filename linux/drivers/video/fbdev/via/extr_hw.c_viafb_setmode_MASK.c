#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_11__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct fb_var_screeninfo {int xres; int yres; int /*<<< orphan*/  bits_per_pixel; } ;
struct TYPE_28__ {TYPE_7__* shared; TYPE_2__* chip_info; TYPE_12__* lvds_setting_info2; TYPE_12__* lvds_setting_info; TYPE_1__* tmds_setting_info; int /*<<< orphan*/  depth; } ;
struct TYPE_27__ {int /*<<< orphan*/  depth; } ;
struct TYPE_25__ {scalar_t__ iga_path; } ;
struct TYPE_26__ {int iga1_devices; int iga2_devices; TYPE_6__ tmds_setting_info; } ;
struct TYPE_24__ {int /*<<< orphan*/  line_length; } ;
struct TYPE_23__ {int /*<<< orphan*/  line_length; } ;
struct TYPE_22__ {int port; int /*<<< orphan*/  mask; int /*<<< orphan*/  value; int /*<<< orphan*/  index; } ;
struct TYPE_21__ {scalar_t__ gfx_chip_name; int /*<<< orphan*/  lvds_chip_info2; int /*<<< orphan*/  lvds_chip_info; } ;
struct TYPE_20__ {scalar_t__ iga_path; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* set_secondary_clock_state ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_secondary_pll_state ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_primary_clock_state ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_primary_pll_state ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_secondary_clock_source ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* set_primary_clock_source ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* set_engine_pll_state ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_18__ {int table_length; TYPE_3__* io_reg_table; } ;
struct TYPE_17__ {scalar_t__ iga_path; void* display_method; } ;
struct TYPE_16__ {struct fb_var_screeninfo var; TYPE_5__ fix; } ;
struct TYPE_15__ {struct fb_var_screeninfo var; TYPE_4__ fix; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR02 ; 
 int /*<<< orphan*/  CRT_Device ; 
 int /*<<< orphan*/  DVI_Device ; 
 scalar_t__ IGA1 ; 
 scalar_t__ IGA2 ; 
 void* LCD_CENTERING ; 
 scalar_t__ UNICHROME_CLE266 ; 
 scalar_t__ UNICHROME_CX700 ; 
 scalar_t__ UNICHROME_K400 ; 
 int /*<<< orphan*/  VIACR ; 
 int /*<<< orphan*/  VIA_CLKSRC_X1 ; 
 int VIA_CRT ; 
 int /*<<< orphan*/  VIA_STATE_OFF ; 
 int /*<<< orphan*/  VIA_STATE_ON ; 
 TYPE_14__ clock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_13__* res_patch_table ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ viafb_CRT_ON ; 
 scalar_t__ viafb_DVI_ON ; 
 int /*<<< orphan*/  viafb_DeviceStatus ; 
 scalar_t__ viafb_LCD2_ON ; 
 scalar_t__ viafb_LCD_ON ; 
 scalar_t__ viafb_SAMM_ON ; 
 scalar_t__ viafb_dual_fb ; 
 int /*<<< orphan*/  FUNC31 (struct fb_var_screeninfo*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (struct fb_var_screeninfo*,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 (struct fb_var_screeninfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  viafb_hotplug ; 
 int viafb_hotplug_Xres ; 
 int viafb_hotplug_Yres ; 
 int /*<<< orphan*/  viafb_hotplug_bpp ; 
 int /*<<< orphan*/  viafb_hotplug_refresh ; 
 int /*<<< orphan*/  FUNC35 (struct fb_var_screeninfo*,int,int,TYPE_12__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 () ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  viafb_refresh ; 
 int /*<<< orphan*/  viafb_refresh1 ; 
 int /*<<< orphan*/  viafb_second_xres ; 
 int /*<<< orphan*/  viafb_second_yres ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_11__* viafbinfo ; 
 TYPE_10__* viafbinfo1 ; 
 TYPE_9__* viaparinfo ; 
 TYPE_8__* viaparinfo1 ; 

int FUNC41(void)
{
	int j, cxres = 0, cyres = 0;
	int port;
	u32 devices = viaparinfo->shared->iga1_devices
		| viaparinfo->shared->iga2_devices;
	u8 value, index, mask;
	struct fb_var_screeninfo var2;

	FUNC2();
	FUNC0();
	FUNC29(devices, VIA_STATE_OFF);

	FUNC7();

	/* Update Patch Register */

	if ((viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266
		|| viaparinfo->chip_info->gfx_chip_name == UNICHROME_K400)
		&& viafbinfo->var.xres == 1024 && viafbinfo->var.yres == 768) {
		for (j = 0; j < res_patch_table[0].table_length; j++) {
			index = res_patch_table[0].io_reg_table[j].index;
			port = res_patch_table[0].io_reg_table[j].port;
			value = res_patch_table[0].io_reg_table[j].value;
			mask = res_patch_table[0].io_reg_table[j].mask;
			FUNC40(index, port, value, mask);
		}
	}

	FUNC25(viafbinfo->fix.line_length);
	FUNC27(viafb_dual_fb ? viafbinfo1->fix.line_length
		: viafbinfo->fix.line_length);
	FUNC24(viaparinfo->depth);
	FUNC26(viafb_dual_fb ? viaparinfo1->depth
		: viaparinfo->depth);
	FUNC28(viaparinfo->shared->iga1_devices, IGA1);
	FUNC28(viaparinfo->shared->iga2_devices, IGA2);
	if (viaparinfo->shared->iga2_devices)
		FUNC5();
	else
		FUNC4();

	/* Update Refresh Rate Setting */

	/* Clear On Screen */

	if (viafb_dual_fb) {
		var2 = viafbinfo1->var;
	} else if (viafb_SAMM_ON) {
		FUNC33(&var2, FUNC34(
			viafb_second_xres, viafb_second_yres, viafb_refresh1));
		cxres = viafbinfo->var.xres;
		cyres = viafbinfo->var.yres;
		var2.bits_per_pixel = viafbinfo->var.bits_per_pixel;
	}

	/* CRT set mode */
	if (viafb_CRT_ON) {
		if (viaparinfo->shared->iga2_devices & VIA_CRT
			&& viafb_SAMM_ON)
			FUNC32(&var2, cxres, cyres, IGA2);
		else
			FUNC32(&viafbinfo->var, 0, 0,
				(viaparinfo->shared->iga1_devices & VIA_CRT)
				? IGA1 : IGA2);

		/* Patch if set_hres is not 8 alignment (1366) to viafb_setmode
		to 8 alignment (1368),there is several pixels (2 pixels)
		on right side of screen. */
		if (viafbinfo->var.xres % 8) {
			FUNC38();
			FUNC39(CR02, VIACR,
				FUNC37(VIACR, CR02) - 1);
			FUNC36();
		}
	}

	if (viafb_DVI_ON) {
		if (viaparinfo->shared->tmds_setting_info.iga_path == IGA2
			&& viafb_SAMM_ON)
			FUNC31(&var2, cxres, cyres, IGA2);
		else
			FUNC31(&viafbinfo->var, 0, 0,
				viaparinfo->tmds_setting_info->iga_path);
	}

	if (viafb_LCD_ON) {
		if (viafb_SAMM_ON &&
			(viaparinfo->lvds_setting_info->iga_path == IGA2)) {
			FUNC35(&var2, cxres, cyres,
				viaparinfo->lvds_setting_info,
				&viaparinfo->chip_info->lvds_chip_info);
		} else {
			/* IGA1 doesn't have LCD scaling, so set it center. */
			if (viaparinfo->lvds_setting_info->iga_path == IGA1) {
				viaparinfo->lvds_setting_info->display_method =
				    LCD_CENTERING;
			}
			FUNC35(&viafbinfo->var, 0, 0,
				viaparinfo->lvds_setting_info,
				&viaparinfo->chip_info->lvds_chip_info);
		}
	}
	if (viafb_LCD2_ON) {
		if (viafb_SAMM_ON &&
			(viaparinfo->lvds_setting_info2->iga_path == IGA2)) {
			FUNC35(&var2, cxres, cyres,
				viaparinfo->lvds_setting_info2,
				&viaparinfo->chip_info->lvds_chip_info2);
		} else {
			/* IGA1 doesn't have LCD scaling, so set it center. */
			if (viaparinfo->lvds_setting_info2->iga_path == IGA1) {
				viaparinfo->lvds_setting_info2->display_method =
				    LCD_CENTERING;
			}
			FUNC35(&viafbinfo->var, 0, 0,
				viaparinfo->lvds_setting_info2,
				&viaparinfo->chip_info->lvds_chip_info2);
		}
	}

	if ((viaparinfo->chip_info->gfx_chip_name == UNICHROME_CX700)
	    && (viafb_LCD_ON || viafb_DVI_ON))
		FUNC8();

	/* If set mode normally, save resolution information for hot-plug . */
	if (!viafb_hotplug) {
		viafb_hotplug_Xres = viafbinfo->var.xres;
		viafb_hotplug_Yres = viafbinfo->var.yres;
		viafb_hotplug_bpp = viafbinfo->var.bits_per_pixel;
		viafb_hotplug_refresh = viafb_refresh;

		if (viafb_DVI_ON)
			viafb_DeviceStatus = DVI_Device;
		else
			viafb_DeviceStatus = CRT_Device;
	}
	FUNC1();
	if (!viafb_SAMM_ON)
		FUNC30(devices, FUNC6(&viafbinfo->var));
	else {
		FUNC30(viaparinfo->shared->iga1_devices,
			FUNC6(&viafbinfo->var));
		FUNC30(viaparinfo->shared->iga2_devices,
			FUNC6(&var2));
	}

	clock.set_engine_pll_state(VIA_STATE_ON);
	clock.set_primary_clock_source(VIA_CLKSRC_X1, true);
	clock.set_secondary_clock_source(VIA_CLKSRC_X1, true);

#ifdef CONFIG_FB_VIA_X_COMPATIBILITY
	clock.set_primary_pll_state(VIA_STATE_ON);
	clock.set_primary_clock_state(VIA_STATE_ON);
	clock.set_secondary_pll_state(VIA_STATE_ON);
	clock.set_secondary_clock_state(VIA_STATE_ON);
#else
	if (viaparinfo->shared->iga1_devices) {
		clock.set_primary_pll_state(VIA_STATE_ON);
		clock.set_primary_clock_state(VIA_STATE_ON);
	} else {
		clock.set_primary_pll_state(VIA_STATE_OFF);
		clock.set_primary_clock_state(VIA_STATE_OFF);
	}

	if (viaparinfo->shared->iga2_devices) {
		clock.set_secondary_pll_state(VIA_STATE_ON);
		clock.set_secondary_clock_state(VIA_STATE_ON);
	} else {
		clock.set_secondary_pll_state(VIA_STATE_OFF);
		clock.set_secondary_clock_state(VIA_STATE_OFF);
	}
#endif /*CONFIG_FB_VIA_X_COMPATIBILITY*/

	FUNC29(devices, VIA_STATE_ON);
	FUNC3();
	return 1;
}