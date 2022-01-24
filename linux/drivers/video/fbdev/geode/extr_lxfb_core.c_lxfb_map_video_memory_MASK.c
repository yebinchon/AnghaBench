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
struct lxfb_par {int /*<<< orphan*/ * vp_regs; int /*<<< orphan*/ * dc_regs; int /*<<< orphan*/ * gp_regs; } ;
struct TYPE_2__ {int smem_start; int smem_len; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/ * screen_base; struct lxfb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_GLIU0_MEM_OFFSET ; 
 int /*<<< orphan*/  DC_UNLOCK ; 
 int DC_UNLOCK_LOCK ; 
 int DC_UNLOCK_UNLOCK ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int FUNC2 () ; 
 int FUNC3 (struct pci_dev*) ; 
 void* FUNC4 (struct pci_dev*,int) ; 
 int FUNC5 (struct pci_dev*,int,char*) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int vram ; 
 int /*<<< orphan*/  FUNC7 (struct lxfb_par*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct fb_info *info, struct pci_dev *dev)
{
	struct lxfb_par *par = info->par;
	int ret;

	ret = FUNC3(dev);

	if (ret)
		return ret;

	ret = FUNC5(dev, 0, "lxfb-framebuffer");

	if (ret)
		return ret;

	ret = FUNC5(dev, 1, "lxfb-gp");

	if (ret)
		return ret;

	ret = FUNC5(dev, 2, "lxfb-vg");

	if (ret)
		return ret;

	ret = FUNC5(dev, 3, "lxfb-vp");

	if (ret)
		return ret;

	info->fix.smem_start = FUNC6(dev, 0);
	info->fix.smem_len = vram ? vram : FUNC2();

	info->screen_base = FUNC1(info->fix.smem_start, info->fix.smem_len);

	ret = -ENOMEM;

	if (info->screen_base == NULL)
		return ret;

	par->gp_regs = FUNC4(dev, 1);

	if (par->gp_regs == NULL)
		return ret;

	par->dc_regs = FUNC4(dev, 2);

	if (par->dc_regs == NULL)
		return ret;

	par->vp_regs = FUNC4(dev, 3);

	if (par->vp_regs == NULL)
		return ret;

	FUNC7(par, DC_UNLOCK, DC_UNLOCK_UNLOCK);
	FUNC7(par, DC_GLIU0_MEM_OFFSET, info->fix.smem_start & 0xFF000000);
	FUNC7(par, DC_UNLOCK, DC_UNLOCK_LOCK);

	FUNC0(&dev->dev, "%d KB of video memory at 0x%lx\n",
		 info->fix.smem_len / 1024, info->fix.smem_start);

	return 0;
}