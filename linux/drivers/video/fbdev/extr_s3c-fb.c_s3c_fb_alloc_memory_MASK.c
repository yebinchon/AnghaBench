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
struct s3c_fb_win {struct fb_info* fbinfo; struct s3c_fb_pd_win* windata; } ;
struct s3c_fb_pd_win {unsigned int xres; unsigned int yres; unsigned int virtual_x; unsigned int virtual_y; int max_bpp; } ;
struct s3c_fb {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned int smem_len; scalar_t__ smem_start; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/  screen_buffer; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct s3c_fb *sfb, struct s3c_fb_win *win)
{
	struct s3c_fb_pd_win *windata = win->windata;
	unsigned int real_size, virt_size, size;
	struct fb_info *fbi = win->fbinfo;
	dma_addr_t map_dma;

	FUNC1(sfb->dev, "allocating memory for display\n");

	real_size = windata->xres * windata->yres;
	virt_size = windata->virtual_x * windata->virtual_y;

	FUNC1(sfb->dev, "real_size=%u (%u.%u), virt_size=%u (%u.%u)\n",
		real_size, windata->xres, windata->yres,
		virt_size, windata->virtual_x, windata->virtual_y);

	size = (real_size > virt_size) ? real_size : virt_size;
	size *= (windata->max_bpp > 16) ? 32 : windata->max_bpp;
	size /= 8;

	fbi->fix.smem_len = size;
	size = FUNC0(size);

	FUNC1(sfb->dev, "want %u bytes for window\n", size);

	fbi->screen_buffer = FUNC2(sfb->dev, size, &map_dma, GFP_KERNEL);
	if (!fbi->screen_buffer)
		return -ENOMEM;

	FUNC1(sfb->dev, "mapped %x to %p\n",
		(unsigned int)map_dma, fbi->screen_buffer);

	FUNC3(fbi->screen_buffer, 0x0, size);
	fbi->fix.smem_start = map_dma;

	return 0;
}