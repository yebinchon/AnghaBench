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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct gxfb_par {void* gp_regs; void* dc_regs; void* vid_regs; } ;
struct TYPE_2__ {int smem_start; int smem_len; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/  screen_base; struct gxfb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_GLIU0_MEM_OFFSET ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (struct pci_dev*) ; 
 void* FUNC4 (struct pci_dev*,int) ; 
 int FUNC5 (struct pci_dev*,int,char*) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int vram ; 
 int /*<<< orphan*/  FUNC7 (struct gxfb_par*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct fb_info *info, struct pci_dev *dev)
{
	struct gxfb_par *par = info->par;
	int ret;

	ret = FUNC3(dev);
	if (ret < 0)
		return ret;

	ret = FUNC5(dev, 3, "gxfb (video processor)");
	if (ret < 0)
		return ret;
	par->vid_regs = FUNC4(dev, 3);
	if (!par->vid_regs)
		return -ENOMEM;

	ret = FUNC5(dev, 2, "gxfb (display controller)");
	if (ret < 0)
		return ret;
	par->dc_regs = FUNC4(dev, 2);
	if (!par->dc_regs)
		return -ENOMEM;

	ret = FUNC5(dev, 1, "gxfb (graphics processor)");
	if (ret < 0)
		return ret;
	par->gp_regs = FUNC4(dev, 1);

	if (!par->gp_regs)
		return -ENOMEM;

	ret = FUNC5(dev, 0, "gxfb (framebuffer)");
	if (ret < 0)
		return ret;

	info->fix.smem_start = FUNC6(dev, 0);
	info->fix.smem_len = vram ? vram : FUNC1();
	info->screen_base = FUNC2(info->fix.smem_start,
				       info->fix.smem_len);
	if (!info->screen_base)
		return -ENOMEM;

	/* Set the 16MiB aligned base address of the graphics memory region
	 * in the display controller */

	FUNC7(par, DC_GLIU0_MEM_OFFSET, info->fix.smem_start & 0xFF000000);

	FUNC0(&dev->dev, "%d KiB of video memory at 0x%lx\n",
		 info->fix.smem_len / 1024, info->fix.smem_start);

	return 0;
}