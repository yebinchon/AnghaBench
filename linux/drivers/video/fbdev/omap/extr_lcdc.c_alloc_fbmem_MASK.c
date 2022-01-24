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
struct omapfb_mem_region {int size; int alloc; int /*<<< orphan*/ * vaddr; int /*<<< orphan*/  paddr; } ;
struct lcd_panel {int bpp; int x_res; int y_res; } ;
struct TYPE_4__ {int vram_size; int /*<<< orphan*/ * vram_virt; int /*<<< orphan*/  vram_phys; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; struct lcd_panel* panel; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ lcdc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct omapfb_mem_region *region)
{
	int bpp;
	int frame_size;
	struct lcd_panel *panel = lcdc.fbdev->panel;

	bpp = panel->bpp;
	if (bpp == 12)
		bpp = 16;
	frame_size = FUNC0(panel->x_res * bpp / 8 * panel->y_res);
	if (region->size > frame_size)
		frame_size = region->size;
	lcdc.vram_size = frame_size;
	lcdc.vram_virt = FUNC2(lcdc.fbdev->dev, lcdc.vram_size,
				      &lcdc.vram_phys, GFP_KERNEL);
	if (lcdc.vram_virt == NULL) {
		FUNC1(lcdc.fbdev->dev, "unable to allocate FB DMA memory\n");
		return -ENOMEM;
	}
	region->size = frame_size;
	region->paddr = lcdc.vram_phys;
	region->vaddr = lcdc.vram_virt;
	region->alloc = 1;

	FUNC3(lcdc.vram_virt, 0, lcdc.vram_size);

	return 0;
}