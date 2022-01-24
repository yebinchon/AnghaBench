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
struct lxfb_par {scalar_t__ vp_regs; scalar_t__ dc_regs; scalar_t__ gp_regs; int /*<<< orphan*/  output; } ;
struct fb_videomode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; int /*<<< orphan*/  smem_len; } ;
struct fb_info {int /*<<< orphan*/  cmap; scalar_t__ screen_base; TYPE_1__ fix; int /*<<< orphan*/  var; struct lxfb_par* par; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  OUTPUT_CRT ; 
 int /*<<< orphan*/  OUTPUT_PANEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct fb_info*,int /*<<< orphan*/ ,struct fb_videomode*,unsigned int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_videomode**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct fb_info*) ; 
 struct fb_info* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct fb_info*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mode_option ; 
 int /*<<< orphan*/  noclear ; 
 scalar_t__ nocrt ; 
 scalar_t__ nopanel ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct fb_info*) ; 
 int /*<<< orphan*/  vt_switch ; 

__attribute__((used)) static int FUNC16(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct lxfb_par *par;
	struct fb_info *info;
	int ret;

	struct fb_videomode *modedb_ptr;
	unsigned int modedb_size;

	info = FUNC8(&pdev->dev);

	if (info == NULL)
		return -ENOMEM;

	par = info->par;

	ret = FUNC9(info, pdev);

	if (ret < 0) {
		FUNC0(&pdev->dev,
			"failed to map frame buffer or controller registers\n");
		goto err;
	}

	/* Set up the desired outputs */

	par->output = 0;
	par->output |= (nopanel) ? 0 : OUTPUT_PANEL;
	par->output |= (nocrt) ? 0 : OUTPUT_CRT;

	/* Set up the mode database */

	FUNC5(&modedb_ptr, &modedb_size);
	ret = FUNC2(&info->var, info, mode_option,
			   modedb_ptr, modedb_size, NULL, 16);

	if (ret == 0 || ret == 4) {
		FUNC0(&pdev->dev, "could not find valid video mode\n");
		ret = -EINVAL;
		goto err;
	}

	/* Clear the screen of garbage, unless noclear was specified,
	 * in which case we assume the user knows what he is doing */

	if (!noclear)
		FUNC11(info->screen_base, 0, info->fix.smem_len);

	/* Set the mode */

	FUNC7(&info->var, info);
	FUNC10(info);

	FUNC14(vt_switch);

	if (FUNC15(info) < 0) {
		ret = -EINVAL;
		goto err;
	}
	FUNC13(pdev, info);
	FUNC3(info, "%s frame buffer device\n", info->fix.id);

	return 0;

err:
	if (info->screen_base) {
		FUNC6(info->screen_base);
		FUNC12(pdev, 0);
	}
	if (par->gp_regs) {
		FUNC6(par->gp_regs);
		FUNC12(pdev, 1);
	}
	if (par->dc_regs) {
		FUNC6(par->dc_regs);
		FUNC12(pdev, 2);
	}
	if (par->vp_regs) {
		FUNC6(par->vp_regs);
		FUNC12(pdev, 3);
	}

	FUNC1(&info->cmap);
	FUNC4(info);

	return ret;
}