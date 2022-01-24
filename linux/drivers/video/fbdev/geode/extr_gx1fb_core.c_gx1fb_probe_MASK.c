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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct geodefb_par {scalar_t__ dc_regs; scalar_t__ vid_regs; int /*<<< orphan*/ * vid_ops; int /*<<< orphan*/ * dc_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; int /*<<< orphan*/  smem_len; } ;
struct fb_info {int /*<<< orphan*/  cmap; scalar_t__ screen_base; TYPE_1__ fix; int /*<<< orphan*/  var; struct geodefb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  cs5530_vid_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct fb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int /*<<< orphan*/  gx1_dc_ops ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  gx1_modedb ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct fb_info*) ; 
 struct fb_info* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct fb_info*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mode_option ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,struct fb_info*) ; 
 scalar_t__ FUNC15 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct geodefb_par *par;
	struct fb_info *info;
	int ret;

	info = FUNC8(&pdev->dev);
	if (!info)
		return -ENOMEM;
	par = info->par;

	/* GX1 display controller and CS5530 video device */
	par->dc_ops  = &gx1_dc_ops;
	par->vid_ops = &cs5530_vid_ops;

	if ((ret = FUNC9(info, pdev)) < 0) {
		FUNC1(&pdev->dev, "failed to map frame buffer or controller registers\n");
		goto err;
	}

	ret = FUNC3(&info->var, info, mode_option,
			   gx1_modedb, FUNC0(gx1_modedb), NULL, 16);
	if (ret == 0 || ret == 4) {
		FUNC1(&pdev->dev, "could not find valid video mode\n");
		ret = -EINVAL;
		goto err;
	}

        /* Clear the frame buffer of garbage. */
        FUNC12(info->screen_base, 0, info->fix.smem_len);

	FUNC7(&info->var, info);
	FUNC10(info);

	if (FUNC15(info) < 0) {
		ret = -EINVAL;
		goto err;
	}
	FUNC14(pdev, info);
	FUNC4(info, "%s frame buffer device\n", info->fix.id);
	return 0;

  err:
	if (info->screen_base) {
		FUNC11(info->screen_base);
		FUNC13(pdev, 0);
	}
	if (par->vid_regs) {
		FUNC11(par->vid_regs);
		FUNC13(pdev, 1);
	}
	if (par->dc_regs) {
		FUNC11(par->dc_regs);
		FUNC16(FUNC6() + 0x8300, 0x100);
	}

	FUNC2(&info->cmap);
	FUNC5(info);

	return ret;
}