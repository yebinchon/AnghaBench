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
struct fbtft_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCTRL ; 
 int /*<<< orphan*/  MIPI_DCS_EXIT_SLEEP_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_PIXEL_FMT_16BIT ; 
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_ON ; 
 int /*<<< orphan*/  MIPI_DCS_SET_PIXEL_FORMAT ; 
 int /*<<< orphan*/  PORCTRL ; 
 int /*<<< orphan*/  PWCTRL1 ; 
 int /*<<< orphan*/  VCMOFSET ; 
 int /*<<< orphan*/  VCOMS ; 
 int /*<<< orphan*/  VDVS ; 
 int /*<<< orphan*/  VDVVRHEN ; 
 int /*<<< orphan*/  VRHS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fbtft_par*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC2(struct fbtft_par *par)
{
	/* turn off sleep mode */
	FUNC1(par, MIPI_DCS_EXIT_SLEEP_MODE);
	FUNC0(120);

	/* set pixel format to RGB-565 */
	FUNC1(par, MIPI_DCS_SET_PIXEL_FORMAT, MIPI_DCS_PIXEL_FMT_16BIT);

	FUNC1(par, PORCTRL, 0x08, 0x08, 0x00, 0x22, 0x22);

	/*
	 * VGH = 13.26V
	 * VGL = -10.43V
	 */
	FUNC1(par, GCTRL, 0x35);

	/*
	 * VDV and VRH register values come from command write
	 * (instead of NVM)
	 */
	FUNC1(par, VDVVRHEN, 0x01, 0xFF);

	/*
	 * VAP =  4.1V + (VCOM + VCOM offset + 0.5 * VDV)
	 * VAN = -4.1V + (VCOM + VCOM offset + 0.5 * VDV)
	 */
	FUNC1(par, VRHS, 0x0B);

	/* VDV = 0V */
	FUNC1(par, VDVS, 0x20);

	/* VCOM = 0.9V */
	FUNC1(par, VCOMS, 0x20);

	/* VCOM offset = 0V */
	FUNC1(par, VCMOFSET, 0x20);

	/*
	 * AVDD = 6.8V
	 * AVCL = -4.8V
	 * VDS = 2.3V
	 */
	FUNC1(par, PWCTRL1, 0xA4, 0xA1);

	FUNC1(par, MIPI_DCS_SET_DISPLAY_ON);
	return 0;
}