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
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (struct fbtft_par*) ;} ;
struct fbtft_par {TYPE_1__ fbtftops; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_EXIT_SLEEP_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_OFF ; 
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_ON ; 
 int /*<<< orphan*/  MIPI_DCS_SET_GAMMA_CURVE ; 
 int /*<<< orphan*/  MIPI_DCS_SET_PIXEL_FORMAT ; 
 int /*<<< orphan*/  MIPI_DCS_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fbtft_par*) ; 
 int /*<<< orphan*/  FUNC2 (struct fbtft_par*,int,...) ; 

__attribute__((used)) static int FUNC3(struct fbtft_par *par)
{
	par->fbtftops.reset(par);

	/* startup sequence for MI0283QT-9A */
	FUNC2(par, MIPI_DCS_SOFT_RESET);
	FUNC0(5);
	FUNC2(par, MIPI_DCS_SET_DISPLAY_OFF);
	/* --------------------------------------------------------- */
	FUNC2(par, 0xCF, 0x00, 0x83, 0x30);
	FUNC2(par, 0xED, 0x64, 0x03, 0x12, 0x81);
	FUNC2(par, 0xE8, 0x85, 0x01, 0x79);
	FUNC2(par, 0xCB, 0x39, 0X2C, 0x00, 0x34, 0x02);
	FUNC2(par, 0xF7, 0x20);
	FUNC2(par, 0xEA, 0x00, 0x00);
	/* ------------power control-------------------------------- */
	FUNC2(par, 0xC0, 0x26);
	FUNC2(par, 0xC1, 0x11);
	/* ------------VCOM --------- */
	FUNC2(par, 0xC5, 0x35, 0x3E);
	FUNC2(par, 0xC7, 0xBE);
	/* ------------memory access control------------------------ */
	FUNC2(par, MIPI_DCS_SET_PIXEL_FORMAT, 0x55); /* 16bit pixel */
	/* ------------frame rate----------------------------------- */
	FUNC2(par, 0xB1, 0x00, 0x1B);
	/* ------------Gamma---------------------------------------- */
	/* write_reg(par, 0xF2, 0x08); */ /* Gamma Function Disable */
	FUNC2(par, MIPI_DCS_SET_GAMMA_CURVE, 0x01);
	/* ------------display-------------------------------------- */
	FUNC2(par, 0xB7, 0x07); /* entry mode set */
	FUNC2(par, 0xB6, 0x0A, 0x82, 0x27, 0x00);
	FUNC2(par, MIPI_DCS_EXIT_SLEEP_MODE);
	FUNC0(100);
	FUNC2(par, MIPI_DCS_SET_DISPLAY_ON);
	FUNC0(20);

	return 0;
}