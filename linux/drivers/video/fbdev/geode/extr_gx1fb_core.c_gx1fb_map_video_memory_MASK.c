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
struct geodefb_par {void* dc_regs; int /*<<< orphan*/  vid_regs; } ;
struct TYPE_2__ {unsigned int smem_start; int smem_len; } ;
struct fb_info {TYPE_1__ fix; void* screen_base; struct geodefb_par* par; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,unsigned int) ; 
 int FUNC1 () ; 
 unsigned int FUNC2 () ; 
 void* FUNC3 (unsigned int,int) ; 
 int FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int,char*) ; 

__attribute__((used)) static int FUNC8(struct fb_info *info, struct pci_dev *dev)
{
	struct geodefb_par *par = info->par;
	unsigned gx_base;
	int fb_len;
	int ret;

	gx_base = FUNC2();
	if (!gx_base)
		return -ENODEV;

	ret = FUNC4(dev);
	if (ret < 0)
		return ret;

	ret = FUNC6(dev, 0, "gx1fb (video)");
	if (ret < 0)
		return ret;
	par->vid_regs = FUNC5(dev, 0);
	if (!par->vid_regs)
		return -ENOMEM;

	if (!FUNC7(gx_base + 0x8300, 0x100, "gx1fb (display controller)"))
		return -EBUSY;
	par->dc_regs = FUNC3(gx_base + 0x8300, 0x100);
	if (!par->dc_regs)
		return -ENOMEM;

	if ((fb_len = FUNC1()) < 0)
		return -ENOMEM;
	info->fix.smem_start = gx_base + 0x800000;
	info->fix.smem_len = fb_len;
	info->screen_base = FUNC3(info->fix.smem_start, info->fix.smem_len);
	if (!info->screen_base)
		return -ENOMEM;

	FUNC0(&dev->dev, "%d Kibyte of video memory at 0x%lx\n",
		 info->fix.smem_len / 1024, info->fix.smem_start);

	return 0;
}