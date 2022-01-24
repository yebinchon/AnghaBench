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
struct TYPE_4__ {scalar_t__ cs; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_2__ gpio; TYPE_1__ fbtftops; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DFUNCTR ; 
 int /*<<< orphan*/  CMD_DINVCTR ; 
 int /*<<< orphan*/  CMD_FRMCTR1 ; 
 int /*<<< orphan*/  CMD_GAMRSEL ; 
 int /*<<< orphan*/  CMD_PWCTR1 ; 
 int /*<<< orphan*/  CMD_PWCTR2 ; 
 int /*<<< orphan*/  CMD_VCOMCTR1 ; 
 int /*<<< orphan*/  CMD_VCOMOFFS ; 
 int /*<<< orphan*/  HEIGHT ; 
 int /*<<< orphan*/  MIPI_DCS_ENTER_NORMAL_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_EXIT_SLEEP_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_PIXEL_FMT_16BIT ; 
 int /*<<< orphan*/  MIPI_DCS_SET_COLUMN_ADDRESS ; 
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_ON ; 
 int /*<<< orphan*/  MIPI_DCS_SET_GAMMA_CURVE ; 
 int /*<<< orphan*/  MIPI_DCS_SET_PAGE_ADDRESS ; 
 int /*<<< orphan*/  MIPI_DCS_SET_PIXEL_FORMAT ; 
 int /*<<< orphan*/  MIPI_DCS_SOFT_RESET ; 
 int /*<<< orphan*/  MIPI_DCS_WRITE_MEMORY_START ; 
 int /*<<< orphan*/  WIDTH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fbtft_par*) ; 
 int /*<<< orphan*/  FUNC3 (struct fbtft_par*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC4(struct fbtft_par *par)
{
	par->fbtftops.reset(par);

	if (par->gpio.cs)
		FUNC0(par->gpio.cs, 0);  /* Activate chip */

	FUNC3(par, MIPI_DCS_SOFT_RESET); /* software reset */
	FUNC1(500);
	FUNC3(par, MIPI_DCS_EXIT_SLEEP_MODE); /* exit sleep */
	FUNC1(5);
	FUNC3(par, MIPI_DCS_SET_PIXEL_FORMAT, MIPI_DCS_PIXEL_FMT_16BIT);
	/* default gamma curve 3 */
	FUNC3(par, MIPI_DCS_SET_GAMMA_CURVE, 0x02);
#ifdef GAMMA_ADJ
	write_reg(par, CMD_GAMRSEL, 0x01); /* Enable Gamma adj */
#endif
	FUNC3(par, MIPI_DCS_ENTER_NORMAL_MODE);
	FUNC3(par, CMD_DFUNCTR, 0xff, 0x06);
	/* Frame Rate Control (In normal mode/Full colors) */
	FUNC3(par, CMD_FRMCTR1, 0x08, 0x02);
	FUNC3(par, CMD_DINVCTR, 0x07); /* display inversion  */
	/* Set VRH1[4:0] & VC[2:0] for VCI1 & GVDD */
	FUNC3(par, CMD_PWCTR1, 0x0A, 0x02);
	/* Set BT[2:0] for AVDD & VCL & VGH & VGL  */
	FUNC3(par, CMD_PWCTR2, 0x02);
	/* Set VMH[6:0] & VML[6:0] for VOMH & VCOML */
	FUNC3(par, CMD_VCOMCTR1, 0x50, 0x63);
	FUNC3(par, CMD_VCOMOFFS, 0);

	FUNC3(par, MIPI_DCS_SET_COLUMN_ADDRESS, 0, 0, 0, WIDTH);
	FUNC3(par, MIPI_DCS_SET_PAGE_ADDRESS, 0, 0, 0, HEIGHT);

	FUNC3(par, MIPI_DCS_SET_DISPLAY_ON); /* display ON */
	FUNC3(par, MIPI_DCS_WRITE_MEMORY_START); /* Memory Write */

	return 0;
}