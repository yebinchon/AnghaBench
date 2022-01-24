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
typedef  int u16 ;
struct TYPE_4__ {int palette_code; int palette_size; int ext_mode; TYPE_1__* fbdev; int /*<<< orphan*/  palette_load_complete; int /*<<< orphan*/  palette_phys; scalar_t__ palette_virt; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_DMA_DATA_TYPE_S32 ; 
 int /*<<< orphan*/  OMAP_LCDC_IRQ_LOADED_PALETTE ; 
 int /*<<< orphan*/  OMAP_LCDC_LOAD_PALETTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ lcdc ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void)
{
	u16	*palette;

	palette = (u16 *)lcdc.palette_virt;

	*(u16 *)palette &= 0x0fff;
	*(u16 *)palette |= lcdc.palette_code;

	FUNC6(lcdc.palette_phys,
		lcdc.palette_size / 4 + 1, 1, OMAP_DMA_DATA_TYPE_S32);

	FUNC7(1);
	FUNC8();

	FUNC4(&lcdc.palette_load_complete);
	FUNC3(OMAP_LCDC_IRQ_LOADED_PALETTE);
	FUNC10(OMAP_LCDC_LOAD_PALETTE);
	FUNC2();
	if (!FUNC11(&lcdc.palette_load_complete,
				FUNC5(500)))
		FUNC0(lcdc.fbdev->dev, "timeout waiting for FRAME DONE\n");
	/* The controller gets disabled in the irq handler */
	FUNC1(OMAP_LCDC_IRQ_LOADED_PALETTE);
	FUNC9();

	FUNC7(lcdc.ext_mode);
}