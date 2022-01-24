#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ lvds_chip_name; } ;
struct TYPE_6__ {TYPE_1__* chip_info; int /*<<< orphan*/  lvds_setting_info; } ;
struct TYPE_5__ {scalar_t__ gfx_chip_name; TYPE_3__ lvds_chip_info; TYPE_3__ lvds_chip_info2; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR6B ; 
 int /*<<< orphan*/  CR79 ; 
 int /*<<< orphan*/  CR91 ; 
 scalar_t__ INTEGRATED_LVDS ; 
 int /*<<< orphan*/  SR1E ; 
 int /*<<< orphan*/  SR3D ; 
 scalar_t__ UNICHROME_CLE266 ; 
 scalar_t__ UNICHROME_CX700 ; 
 int /*<<< orphan*/  VIACR ; 
 int /*<<< orphan*/  VIASR ; 
 scalar_t__ VT1636_LVDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ viafb_LCD2_ON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__* viaparinfo ; 

void FUNC4(void)
{

	if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266) {
		FUNC1();
		/* DI1 pad off */
		FUNC3(SR1E, VIASR, 0x00, 0x30);
	} else if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CX700) {
		if (viafb_LCD2_ON
		    && (INTEGRATED_LVDS ==
			viaparinfo->chip_info->lvds_chip_info2.lvds_chip_name))
			FUNC0(viaparinfo->lvds_setting_info,
				&viaparinfo->chip_info->lvds_chip_info2);
		if (INTEGRATED_LVDS ==
			viaparinfo->chip_info->lvds_chip_info.lvds_chip_name)
			FUNC0(viaparinfo->lvds_setting_info,
				&viaparinfo->chip_info->lvds_chip_info);
		if (VT1636_LVDS == viaparinfo->chip_info->
			lvds_chip_info.lvds_chip_name)
			FUNC2(viaparinfo->lvds_setting_info,
				&viaparinfo->chip_info->lvds_chip_info);
	} else if (VT1636_LVDS ==
	viaparinfo->chip_info->lvds_chip_info.lvds_chip_name) {
		FUNC2(viaparinfo->lvds_setting_info,
				    &viaparinfo->chip_info->lvds_chip_info);
	} else {
		/* Backlight off           */
		FUNC3(SR3D, VIASR, 0x00, 0x20);
		/* 24 bit DI data paht off */
		FUNC3(CR91, VIACR, 0x80, 0x80);
	}

	/* Disable expansion bit   */
	FUNC3(CR79, VIACR, 0x00, 0x01);
	/* Simultaneout disabled   */
	FUNC3(CR6B, VIACR, 0x00, 0x08);
}