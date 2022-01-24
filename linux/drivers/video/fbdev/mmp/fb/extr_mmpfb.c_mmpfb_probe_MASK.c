#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {struct mmp_buffer_driver_mach_info* platform_data; } ;
struct platform_device {TYPE_5__ dev; } ;
struct mmpfb_info {int fb_size; TYPE_5__* dev; int /*<<< orphan*/  access_ok; int /*<<< orphan*/  fb_start_dma; int /*<<< orphan*/ * fb_start; int /*<<< orphan*/  overlay; TYPE_3__* path; int /*<<< orphan*/  pix_fmt; int /*<<< orphan*/  name; struct fb_info* fb_info; } ;
struct mmp_buffer_driver_mach_info {int /*<<< orphan*/  dmafetch_id; int /*<<< orphan*/  overlay_id; int /*<<< orphan*/  path_name; int /*<<< orphan*/  default_pixfmt; int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  id; } ;
struct TYPE_11__ {int yres_virtual; int yres; int xres_virtual; int bits_per_pixel; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/  node; TYPE_2__ var; struct mmpfb_info* par; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MMPFB_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*,int,...) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 int FUNC6 (struct fb_info*,struct mmpfb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fb_info*,int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC9 (int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (struct fb_info*) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mmpfb_info*,int) ; 
 int FUNC15 (struct mmpfb_info*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct mmpfb_info*) ; 
 int FUNC20 (struct fb_info*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct mmp_buffer_driver_mach_info *mi;
	struct fb_info *info;
	struct mmpfb_info *fbi;
	int ret, modes_num;

	mi = pdev->dev.platform_data;
	if (mi == NULL) {
		FUNC1(&pdev->dev, "no platform data defined\n");
		return -EINVAL;
	}

	/* initialize fb */
	info = FUNC9(sizeof(struct mmpfb_info), &pdev->dev);
	if (info == NULL)
		return -ENOMEM;
	fbi = info->par;

	/* init fb */
	fbi->fb_info = info;
	FUNC19(pdev, fbi);
	fbi->dev = &pdev->dev;
	fbi->name = mi->name;
	fbi->pix_fmt = mi->default_pixfmt;
	FUNC18(&info->var, fbi->pix_fmt);
	FUNC17(&fbi->access_ok);

	/* get display path by name */
	fbi->path = FUNC11(mi->path_name);
	if (!fbi->path) {
		FUNC1(&pdev->dev, "can't get the path %s\n", mi->path_name);
		ret = -EINVAL;
		goto failed_destroy_mutex;
	}

	FUNC2(fbi->dev, "path %s get\n", fbi->path->name);

	/* get overlay */
	fbi->overlay = FUNC13(fbi->path, mi->overlay_id);
	if (!fbi->overlay) {
		ret = -EINVAL;
		goto failed_destroy_mutex;
	}
	/* set fetch used */
	FUNC12(fbi->overlay, mi->dmafetch_id);

	modes_num = FUNC15(fbi);
	if (modes_num < 0) {
		ret = modes_num;
		goto failed_destroy_mutex;
	}

	/*
	 * if get modes success, means not hotplug panels, use caculated buffer
	 * or use default size
	 */
	if (modes_num > 0) {
		/* fix to 2* yres */
		info->var.yres_virtual = info->var.yres * 2;

		/* Allocate framebuffer memory: size = modes xy *4 */
		fbi->fb_size = info->var.xres_virtual * info->var.yres_virtual
				* info->var.bits_per_pixel / 8;
	} else {
		fbi->fb_size = MMPFB_DEFAULT_SIZE;
	}

	fbi->fb_start = FUNC3(&pdev->dev, FUNC0(fbi->fb_size),
				&fbi->fb_start_dma, GFP_KERNEL);
	if (fbi->fb_start == NULL) {
		FUNC1(&pdev->dev, "can't alloc framebuffer\n");
		ret = -ENOMEM;
		goto failed_destroy_mutex;
	}
	FUNC2(fbi->dev, "fb %dk allocated\n", fbi->fb_size/1024);

	/* fb power on */
	if (modes_num > 0)
		FUNC14(fbi, 1);

	ret = FUNC6(info, fbi);
	if (ret < 0)
		goto failed_free_buff;

	ret = FUNC20(info);
	if (ret < 0) {
		FUNC1(&pdev->dev, "Failed to register fb: %d\n", ret);
		ret = -ENXIO;
		goto failed_clear_info;
	}

	FUNC2(fbi->dev, "loaded to /dev/fb%d <%s>.\n",
		info->node, info->fix.id);

#ifdef CONFIG_LOGO
	if (fbi->fb_start) {
		fb_prepare_logo(info, 0);
		fb_show_logo(info, 0);
	}
#endif

	return 0;

failed_clear_info:
	FUNC5(info);
failed_free_buff:
	FUNC4(&pdev->dev, FUNC0(fbi->fb_size), fbi->fb_start,
		fbi->fb_start_dma);
failed_destroy_mutex:
	FUNC16(&fbi->access_ok);
	FUNC1(fbi->dev, "mmp-fb: frame buffer device init failed\n");

	FUNC10(info);

	return ret;
}