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
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_COMPARE_1 ; 
 int /*<<< orphan*/  REG_COMPARE_2 ; 
 int /*<<< orphan*/  REG_DISPLAY_CONTROL_1 ; 
 int /*<<< orphan*/  REG_DISPLAY_CONTROL_2 ; 
 int /*<<< orphan*/  REG_DISPLAY_CONTROL_3 ; 
 int /*<<< orphan*/  REG_DRIVER_OUTPUT_CONTROL ; 
 int /*<<< orphan*/  REG_ENTRY_MODE ; 
 int /*<<< orphan*/  REG_EXT_INTF_CONTROL ; 
 int /*<<< orphan*/  REG_FIRST_SCREEN_DRIVE_POS ; 
 int /*<<< orphan*/  REG_FRAME_CYCLE_CONTROL ; 
 int /*<<< orphan*/  REG_GAMMA_CONTROL_1 ; 
 int /*<<< orphan*/  REG_GAMMA_CONTROL_10 ; 
 int /*<<< orphan*/  REG_GAMMA_CONTROL_2 ; 
 int /*<<< orphan*/  REG_GAMMA_CONTROL_3 ; 
 int /*<<< orphan*/  REG_GAMMA_CONTROL_4 ; 
 int /*<<< orphan*/  REG_GAMMA_CONTROL_5 ; 
 int /*<<< orphan*/  REG_GAMMA_CONTROL_6 ; 
 int /*<<< orphan*/  REG_GAMMA_CONTROL_7 ; 
 int /*<<< orphan*/  REG_GAMMA_CONTROL_8 ; 
 int /*<<< orphan*/  REG_GAMMA_CONTROL_9 ; 
 int /*<<< orphan*/  REG_GATE_SCAN_CONTROL ; 
 int /*<<< orphan*/  REG_LCD_AC_DRIVEING_CONTROL ; 
 int /*<<< orphan*/  REG_RAM_ADDRESS_SET ; 
 int /*<<< orphan*/  REG_RAM_ADDR_POS_H ; 
 int /*<<< orphan*/  REG_RAM_ADDR_POS_V ; 
 int /*<<< orphan*/  REG_SECOND_SCREEN_DRIVE_POS ; 
 int /*<<< orphan*/  REG_START_OSCILLATION ; 
 int /*<<< orphan*/  REG_VERT_SCROLL_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct spi_device *spi)
{
	FUNC2(spi, REG_START_OSCILLATION, 1);
	FUNC4(10000, 10500);
	FUNC2(spi, REG_DRIVER_OUTPUT_CONTROL, 0x691B);
	FUNC2(spi, REG_LCD_AC_DRIVEING_CONTROL, 0x0700);
	FUNC2(spi, REG_ENTRY_MODE, 0x1030);
	FUNC2(spi, REG_COMPARE_1, 0x0000);
	FUNC2(spi, REG_COMPARE_2, 0x0000);
	FUNC2(spi, REG_DISPLAY_CONTROL_1, 0x0037);
	FUNC2(spi, REG_DISPLAY_CONTROL_2, 0x0202);
	FUNC2(spi, REG_DISPLAY_CONTROL_3, 0x0000);
	FUNC2(spi, REG_FRAME_CYCLE_CONTROL, 0x0000);

	/* Set RGB interface */
	FUNC2(spi, REG_EXT_INTF_CONTROL, 0x0110);

	FUNC0(spi);

	FUNC2(spi, REG_GAMMA_CONTROL_1, 0x0302);
	FUNC2(spi, REG_GAMMA_CONTROL_2, 0x0407);
	FUNC2(spi, REG_GAMMA_CONTROL_3, 0x0304);
	FUNC2(spi, REG_GAMMA_CONTROL_4, 0x0203);
	FUNC2(spi, REG_GAMMA_CONTROL_5, 0x0706);
	FUNC2(spi, REG_GAMMA_CONTROL_6, 0x0407);
	FUNC2(spi, REG_GAMMA_CONTROL_7, 0x0706);
	FUNC2(spi, REG_GAMMA_CONTROL_8, 0x0000);
	FUNC2(spi, REG_GAMMA_CONTROL_9, 0x0C06);
	FUNC2(spi, REG_GAMMA_CONTROL_10, 0x0F00);
	FUNC2(spi, REG_RAM_ADDRESS_SET, 0x0000);
	FUNC2(spi, REG_GATE_SCAN_CONTROL, 0x0000);
	FUNC2(spi, REG_VERT_SCROLL_CONTROL, 0x0000);
	FUNC2(spi, REG_FIRST_SCREEN_DRIVE_POS, 0xDB00);
	FUNC2(spi, REG_SECOND_SCREEN_DRIVE_POS, 0xDB00);
	FUNC2(spi, REG_RAM_ADDR_POS_H, 0xAF00);
	FUNC2(spi, REG_RAM_ADDR_POS_V, 0xDB00);
	FUNC1(spi);
	FUNC3(spi);
}