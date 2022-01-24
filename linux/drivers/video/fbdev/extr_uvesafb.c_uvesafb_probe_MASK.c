#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vbe_mode_ib {int dummy; } ;
struct TYPE_5__ {int total_memory; } ;
struct uvesafb_par {struct vbe_mode_ib* vbe_modes; TYPE_1__ vbe_ib; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  modedb; } ;
struct TYPE_6__ {int smem_len; int /*<<< orphan*/  smem_start; int /*<<< orphan*/  id; } ;
struct fb_info {int /*<<< orphan*/  cmap; TYPE_3__ monspecs; int /*<<< orphan*/  modelist; TYPE_2__ fix; int /*<<< orphan*/  screen_base; int /*<<< orphan*/ * fbops; struct uvesafb_par* par; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*,char*) ; 
 struct fb_info* FUNC6 (int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vbe_mode_ib*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC14 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC18 (int,int,char*) ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uvesafb_dev_attgrp ; 
 int /*<<< orphan*/  FUNC20 (struct fb_info*,struct vbe_mode_ib*) ; 
 int /*<<< orphan*/  FUNC21 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC22 (struct fb_info*) ; 
 int /*<<< orphan*/  uvesafb_ops ; 
 int FUNC23 (struct fb_info*) ; 
 int FUNC24 (struct fb_info*) ; 

__attribute__((used)) static int FUNC25(struct platform_device *dev)
{
	struct fb_info *info;
	struct vbe_mode_ib *mode = NULL;
	struct uvesafb_par *par;
	int err = 0, i;

	info = FUNC6(sizeof(*par) +	sizeof(u32) * 256, &dev->dev);
	if (!info)
		return -ENOMEM;

	par = info->par;

	err = FUNC23(info);
	if (err) {
		FUNC12("vbe_init() failed with %d\n", err);
		goto out;
	}

	info->fbops = &uvesafb_ops;

	i = FUNC24(info);
	if (i < 0) {
		err = -EINVAL;
		goto out;
	} else {
		mode = &par->vbe_modes[i];
	}

	if (FUNC0(&info->cmap, 256, 0) < 0) {
		err = -ENXIO;
		goto out;
	}

	FUNC20(info, mode);

	if (!FUNC18(0x3c0, 32, "uvesafb")) {
		FUNC12("request region 0x3c0-0x3e0 failed\n");
		err = -EIO;
		goto out_mode;
	}

	if (!FUNC17(info->fix.smem_start, info->fix.smem_len,
				"uvesafb")) {
		FUNC12("cannot reserve video memory at 0x%lx\n",
		       info->fix.smem_start);
		err = -EIO;
		goto out_reg;
	}

	FUNC21(info);
	FUNC22(info);

	if (!info->screen_base) {
		FUNC12("abort, cannot ioremap 0x%x bytes of video memory at 0x%lx\n",
		       info->fix.smem_len, info->fix.smem_start);
		err = -EIO;
		goto out_mem;
	}

	FUNC11(dev, info);

	if (FUNC14(info) < 0) {
		FUNC12("failed to register framebuffer device\n");
		err = -EINVAL;
		goto out_unmap;
	}

	FUNC13("framebuffer at 0x%lx, mapped to 0x%p, using %dk, total %dk\n",
		info->fix.smem_start, info->screen_base,
		info->fix.smem_len / 1024, par->vbe_ib.total_memory * 64);
	FUNC4(info, "%s frame buffer device\n", info->fix.id);

	err = FUNC19(&dev->dev.kobj, &uvesafb_dev_attgrp);
	if (err != 0)
		FUNC5(info, "failed to register attributes\n");

	return 0;

out_unmap:
	FUNC8(info->screen_base);
out_mem:
	FUNC15(info->fix.smem_start, info->fix.smem_len);
out_reg:
	FUNC16(0x3c0, 32);
out_mode:
	if (!FUNC10(&info->modelist))
		FUNC3(&info->modelist);
	FUNC2(info->monspecs.modedb);
	FUNC1(&info->cmap);
out:
	FUNC9(par->vbe_modes);

	FUNC7(info);
	return err;
}