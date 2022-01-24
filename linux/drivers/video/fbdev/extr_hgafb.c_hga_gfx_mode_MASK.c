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

/* Variables and functions */
 int /*<<< orphan*/  HGA_GFX ; 
 int HGA_GFX_MODE_EN ; 
 int /*<<< orphan*/  HGA_GFX_PORT ; 
 int HGA_MODE_GRAPHICS ; 
 int /*<<< orphan*/  HGA_MODE_PORT ; 
 int HGA_MODE_VIDEO_EN ; 
 int /*<<< orphan*/  HGA_STATUS_PORT ; 
 int /*<<< orphan*/  hga_mode ; 
 int /*<<< orphan*/  hga_reg_lock ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(void)
{
	unsigned long flags;

	FUNC1(&hga_reg_lock, flags);
	FUNC0(0x00, HGA_STATUS_PORT);
	FUNC0(HGA_GFX_MODE_EN, HGA_GFX_PORT);
	FUNC0(HGA_MODE_VIDEO_EN | HGA_MODE_GRAPHICS, HGA_MODE_PORT);

	FUNC3(0x35, 0x00);	/* horizontal total */
	FUNC3(0x2d, 0x01);	/* horizontal displayed */
	FUNC3(0x2e, 0x02);	/* horizontal sync pos */
	FUNC3(0x07, 0x03);	/* horizontal sync width */

	FUNC3(0x5b, 0x04);	/* vertical total */
	FUNC3(0x02, 0x05);	/* vertical total adjust */
	FUNC3(0x57, 0x06);	/* vertical displayed */
	FUNC3(0x57, 0x07);	/* vertical sync pos */

	FUNC3(0x02, 0x08);	/* interlace mode */
	FUNC3(0x03, 0x09);	/* maximum scanline */
	FUNC3(0x00, 0x0a);	/* cursor start */
	FUNC3(0x00, 0x0b);	/* cursor end */

	FUNC4(0x0000, 0x0c);	/* start address */
	FUNC4(0x0000, 0x0e);	/* cursor location */

	hga_mode = HGA_GFX;
	FUNC2(&hga_reg_lock, flags);
}