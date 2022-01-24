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
struct fb_var_screeninfo {int xres_virtual; int yres_virtual; int bits_per_pixel; } ;
struct TYPE_2__ {int /*<<< orphan*/  smem_len; int /*<<< orphan*/  smem_start; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/  screen_base; int /*<<< orphan*/  device; struct fb_var_screeninfo var; } ;
struct atmel_lcdfb_info {int /*<<< orphan*/  smem_len; struct fb_info* info; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct atmel_lcdfb_info *sinfo)
{
	struct fb_info *info = sinfo->info;
	struct fb_var_screeninfo *var = &info->var;
	unsigned int smem_len;

	smem_len = (var->xres_virtual * var->yres_virtual
		    * ((var->bits_per_pixel + 7) / 8));
	info->fix.smem_len = FUNC1(smem_len, sinfo->smem_len);

	info->screen_base = FUNC0(info->device, info->fix.smem_len,
					 (dma_addr_t *)&info->fix.smem_start,
					 GFP_KERNEL);

	if (!info->screen_base) {
		return -ENOMEM;
	}

	FUNC2(info->screen_base, 0, info->fix.smem_len);

	return 0;
}