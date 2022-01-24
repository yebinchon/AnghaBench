#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_8__ {TYPE_3__* tmds_setting_info; TYPE_2__* chip_info; } ;
struct TYPE_7__ {scalar_t__ iga_path; } ;
struct TYPE_5__ {int output_interface; int /*<<< orphan*/  tmds_chip_slave_addr; int /*<<< orphan*/  i2c_port; } ;
struct TYPE_6__ {int /*<<< orphan*/  gfx_chip_name; TYPE_1__ tmds_chip_info; } ;

/* Variables and functions */
 int BIT0 ; 
 int BIT3 ; 
 int BIT5 ; 
 int BIT6 ; 
 int BIT7 ; 
 int /*<<< orphan*/  CR6B ; 
 int /*<<< orphan*/  CR6C ; 
 int /*<<< orphan*/  CR79 ; 
 int /*<<< orphan*/  CR88 ; 
 int /*<<< orphan*/  CR91 ; 
 int /*<<< orphan*/  CR93 ; 
 int CR97 ; 
 int /*<<< orphan*/  CRD2 ; 
 scalar_t__ IGA2 ; 
#define  INTERFACE_DFP_HIGH 132 
#define  INTERFACE_DFP_LOW 131 
#define  INTERFACE_DVP0 130 
#define  INTERFACE_DVP1 129 
#define  INTERFACE_TMDS 128 
 int /*<<< orphan*/  UNICHROME_CLE266 ; 
 int /*<<< orphan*/  VIACR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 
 int viafb_bus_width ; 
 int viafb_device_lcd_dualedge ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int viafb_platform_epia_dvi ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_4__* viaparinfo ; 

void FUNC6(void)
{
	u8 data;

	switch (viaparinfo->chip_info->tmds_chip_info.output_interface) {
	case INTERFACE_DVP0:
		FUNC5(CR6B, VIACR, 0x01, BIT0);
		FUNC5(CR6C, VIACR, 0x21, BIT0 + BIT5);
		FUNC0();
		if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
			FUNC2(0x88, 0x3b);
		else
			/*clear CR91[5] to direct on display period
			   in the secondary diplay path */
			FUNC3(VIACR, 0x91, 0x00, 0x20);
		break;

	case INTERFACE_DVP1:
		if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
			FUNC5(CR93, VIACR, 0x21, BIT0 + BIT5);

		/*fix dvi cann't be enabled with MB VT5718C4 - Al Zhang */
		if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
			FUNC2(0x88, 0x3b);
		else
			/*clear CR91[5] to direct on display period
			  in the secondary diplay path */
			FUNC3(VIACR, 0x91, 0x00, 0x20);

		/*fix DVI cannot enable on EPIA-M board */
		if (viafb_platform_epia_dvi == 1) {
			FUNC5(CR91, VIACR, 0x1f, 0x1f);
			FUNC5(CR88, VIACR, 0x00, BIT6 + BIT0);
			if (viafb_bus_width == 24) {
				if (viafb_device_lcd_dualedge == 1)
					data = 0x3F;
				else
					data = 0x37;
				FUNC4(viaparinfo->chip_info->
					tmds_chip_info.i2c_port,
					viaparinfo->chip_info->
					tmds_chip_info.tmds_chip_slave_addr,
					0x08, data);
			}
		}
		break;

	case INTERFACE_DFP_HIGH:
		if (viaparinfo->chip_info->gfx_chip_name != UNICHROME_CLE266)
			FUNC3(VIACR, CR97, 0x03, 0x03);

		FUNC3(VIACR, 0x91, 0x00, 0x20);
		break;

	case INTERFACE_DFP_LOW:
		if (viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266)
			break;

		FUNC1();
		FUNC3(VIACR, 0x91, 0x00, 0x20);
		break;

	case INTERFACE_TMDS:
		/* Turn on Display period in the panel path. */
		FUNC5(CR91, VIACR, 0, BIT7);

		/* Turn on TMDS power. */
		FUNC5(CRD2, VIACR, 0, BIT3);
		break;
	}

	if (viaparinfo->tmds_setting_info->iga_path == IGA2) {
		/* Disable LCD Scaling */
		FUNC5(CR79, VIACR, 0x00, BIT0);
	}
}