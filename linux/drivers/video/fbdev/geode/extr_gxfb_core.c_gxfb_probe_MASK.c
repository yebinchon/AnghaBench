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
struct gxfb_par {int enable_crt; scalar_t__ gp_regs; scalar_t__ dc_regs; scalar_t__ vid_regs; } ;
struct fb_videomode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; int /*<<< orphan*/  smem_len; } ;
struct fb_info {int /*<<< orphan*/  cmap; scalar_t__ screen_base; TYPE_1__ fix; int /*<<< orphan*/  var; struct gxfb_par* par; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MSR_GX_GLD_MSR_CONFIG ; 
 unsigned long MSR_GX_GLD_MSR_CONFIG_FP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct fb_info*,int /*<<< orphan*/ ,struct fb_videomode*,unsigned int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_videomode**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct fb_info*) ; 
 struct fb_info* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct fb_info*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mode_option ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC16 (struct fb_info*) ; 
 int /*<<< orphan*/  vt_switch ; 

__attribute__((used)) static int FUNC17(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct gxfb_par *par;
	struct fb_info *info;
	int ret;
	unsigned long val;

	struct fb_videomode *modedb_ptr;
	unsigned int modedb_size;

	info = FUNC7(&pdev->dev);
	if (!info)
		return -ENOMEM;
	par = info->par;

	if ((ret = FUNC8(info, pdev)) < 0) {
		FUNC0(&pdev->dev, "failed to map frame buffer or controller registers\n");
		goto err;
	}

	/* Figure out if this is a TFT or CRT part */

	FUNC15(MSR_GX_GLD_MSR_CONFIG, val);

	if ((val & MSR_GX_GLD_MSR_CONFIG_FP) == MSR_GX_GLD_MSR_CONFIG_FP)
		par->enable_crt = 0;
	else
		par->enable_crt = 1;

	FUNC5(&modedb_ptr, &modedb_size);
	ret = FUNC2(&info->var, info, mode_option,
			   modedb_ptr, modedb_size, NULL, 16);
	if (ret == 0 || ret == 4) {
		FUNC0(&pdev->dev, "could not find valid video mode\n");
		ret = -EINVAL;
		goto err;
	}


	/* Clear the frame buffer of garbage. */
        FUNC11(info->screen_base, 0, info->fix.smem_len);

	FUNC6(&info->var, info);
	FUNC9(info);

	FUNC14(vt_switch);

	if (FUNC16(info) < 0) {
		ret = -EINVAL;
		goto err;
	}
	FUNC13(pdev, info);
	FUNC3(info, "%s frame buffer device\n", info->fix.id);
	return 0;

  err:
	if (info->screen_base) {
		FUNC10(info->screen_base);
		FUNC12(pdev, 0);
	}
	if (par->vid_regs) {
		FUNC10(par->vid_regs);
		FUNC12(pdev, 3);
	}
	if (par->dc_regs) {
		FUNC10(par->dc_regs);
		FUNC12(pdev, 2);
	}
	if (par->gp_regs) {
		FUNC10(par->gp_regs);
		FUNC12(pdev, 1);
	}

	FUNC1(&info->cmap);
	FUNC4(info);
	return ret;
}