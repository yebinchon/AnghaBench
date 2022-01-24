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
struct TYPE_4__ {int /*<<< orphan*/ * palette_virt; TYPE_1__* fbdev; int /*<<< orphan*/  palette_phys; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_PALETTE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__ lcdc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void)
{
	lcdc.palette_virt = FUNC1(lcdc.fbdev->dev, MAX_PALETTE_SIZE,
					 &lcdc.palette_phys, GFP_KERNEL);
	if (lcdc.palette_virt == NULL) {
		FUNC0(lcdc.fbdev->dev, "failed to alloc palette memory\n");
		return -ENOMEM;
	}
	FUNC2(lcdc.palette_virt, 0, MAX_PALETTE_SIZE);

	return 0;
}