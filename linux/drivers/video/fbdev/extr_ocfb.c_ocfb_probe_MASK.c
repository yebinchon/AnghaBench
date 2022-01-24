#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int smem_len; int /*<<< orphan*/  smem_start; } ;
struct TYPE_5__ {int /*<<< orphan*/  cmap; int /*<<< orphan*/  flags; int /*<<< orphan*/  pseudo_palette; scalar_t__ screen_base; TYPE_1__ fix; int /*<<< orphan*/  var; struct ocfb_dev* par; int /*<<< orphan*/ * device; int /*<<< orphan*/ * fbops; } ;
struct ocfb_dev {int /*<<< orphan*/  fb_phys; scalar_t__ fb_virt; TYPE_2__ info; scalar_t__ little_endian; int /*<<< orphan*/  pseudo_palette; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FBINFO_FOREIGN_ENDIAN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PALETTE_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_mode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct resource*) ; 
 struct ocfb_dev* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mode_option ; 
 int /*<<< orphan*/  FUNC12 (struct ocfb_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfb_dev*) ; 
 int /*<<< orphan*/  ocfb_ops ; 
 int /*<<< orphan*/  FUNC14 (struct ocfb_dev*) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct ocfb_dev*) ; 
 int FUNC17 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	int ret = 0;
	struct ocfb_dev *fbdev;
	struct resource *res;
	int fbsize;

	fbdev = FUNC5(&pdev->dev, sizeof(*fbdev), GFP_KERNEL);
	if (!fbdev)
		return -ENOMEM;

	FUNC16(pdev, fbdev);

	fbdev->info.fbops = &ocfb_ops;
	fbdev->info.device = &pdev->dev;
	fbdev->info.par = fbdev;

	/* Video mode setup */
	if (!FUNC10(&fbdev->info.var, &fbdev->info, mode_option,
			  NULL, 0, &default_mode, 16)) {
		FUNC3(&pdev->dev, "No valid video modes found\n");
		return -EINVAL;
	}
	FUNC13(fbdev);
	FUNC12(fbdev);

	/* Request I/O resource */
	res = FUNC15(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC3(&pdev->dev, "I/O resource request failed\n");
		return -ENXIO;
	}
	fbdev->regs = FUNC4(&pdev->dev, res);
	if (FUNC0(fbdev->regs))
		return FUNC2(fbdev->regs);

	/* Allocate framebuffer memory */
	fbsize = fbdev->info.fix.smem_len;
	fbdev->fb_virt = FUNC6(&pdev->dev, FUNC1(fbsize),
					    &fbdev->fb_phys, GFP_KERNEL);
	if (!fbdev->fb_virt) {
		FUNC3(&pdev->dev,
			"Frame buffer memory allocation failed\n");
		return -ENOMEM;
	}
	fbdev->info.fix.smem_start = fbdev->fb_phys;
	fbdev->info.screen_base = fbdev->fb_virt;
	fbdev->info.pseudo_palette = fbdev->pseudo_palette;

	/* Clear framebuffer */
	FUNC11(fbdev->fb_virt, 0, fbsize);

	/* Setup and enable the framebuffer */
	FUNC14(fbdev);

	if (fbdev->little_endian)
		fbdev->info.flags |= FBINFO_FOREIGN_ENDIAN;

	/* Allocate color map */
	ret = FUNC8(&fbdev->info.cmap, PALETTE_SIZE, 0);
	if (ret) {
		FUNC3(&pdev->dev, "Color map allocation failed\n");
		goto err_dma_free;
	}

	/* Register framebuffer */
	ret = FUNC17(&fbdev->info);
	if (ret) {
		FUNC3(&pdev->dev, "Framebuffer registration failed\n");
		goto err_dealloc_cmap;
	}

	return 0;

err_dealloc_cmap:
	FUNC9(&fbdev->info.cmap);

err_dma_free:
	FUNC7(&pdev->dev, FUNC1(fbsize), fbdev->fb_virt,
			  fbdev->fb_phys);

	return ret;
}