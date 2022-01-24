#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct i740fb_par {int has_sgram; int ddc_registered; int /*<<< orphan*/  regs; int /*<<< orphan*/  ddc_adapter; int /*<<< orphan*/  wc_cookie; int /*<<< orphan*/  pseudo_palette; int /*<<< orphan*/  open_lock; } ;
struct fb_videomode {int dummy; } ;
struct TYPE_7__ {int smem_len; void* smem_start; int /*<<< orphan*/  id; int /*<<< orphan*/  mmio_len; void* mmio_start; } ;
struct TYPE_8__ {int bits_per_pixel; int yres_virtual; int xres_virtual; int /*<<< orphan*/  activate; } ;
struct TYPE_9__ {int /*<<< orphan*/ * modedb; int /*<<< orphan*/  modedb_len; } ;
struct fb_info {int screen_size; int flags; int /*<<< orphan*/  screen_base; int /*<<< orphan*/  cmap; TYPE_1__ fix; int /*<<< orphan*/  device; TYPE_2__ var; TYPE_5__ monspecs; int /*<<< orphan*/  modelist; int /*<<< orphan*/  pseudo_palette; int /*<<< orphan*/ * fbops; struct i740fb_par* par; } ;

/* Variables and functions */
 int DRAM_RAS_PRECHARGE ; 
 int DRAM_RAS_TIMING ; 
 int DRAM_ROW_1 ; 
 int DRAM_ROW_1_SDRAM ; 
 int /*<<< orphan*/  DRAM_ROW_BNDRY_0 ; 
 int /*<<< orphan*/  DRAM_ROW_BNDRY_1 ; 
 int /*<<< orphan*/  DRAM_ROW_CNTL_LO ; 
 int /*<<< orphan*/  DRAM_ROW_TYPE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FBINFO_DEFAULT ; 
 int FBINFO_HWACCEL_YPAN ; 
 int /*<<< orphan*/  FB_ACTIVATE_NOW ; 
 scalar_t__ XRX ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 struct fb_videomode* FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,struct fb_info*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct fb_info*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct fb_videomode const*) ; 
 struct fb_info* FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,struct fb_info*) ; 
 TYPE_1__ i740fb_fix ; 
 int /*<<< orphan*/  i740fb_ops ; 
 scalar_t__ FUNC16 (struct fb_info*) ; 
 int FUNC17 (struct i740fb_par*,scalar_t__) ; 
 int FUNC18 (struct i740fb_par*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct i740fb_par*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 char* mode_option ; 
 scalar_t__ mtrr ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC27 (struct pci_dev*) ; 
 int FUNC28 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct pci_dev*,int) ; 
 void* FUNC30 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct pci_dev*,struct fb_info*) ; 
 int FUNC32 (struct fb_info*) ; 

__attribute__((used)) static int FUNC33(struct pci_dev *dev, const struct pci_device_id *ent)
{
	struct fb_info *info;
	struct i740fb_par *par;
	int ret, tmp;
	bool found = false;
	u8 *edid;

	info = FUNC12(sizeof(struct i740fb_par), &(dev->dev));
	if (!info)
		return -ENOMEM;

	par = info->par;
	FUNC21(&par->open_lock);

	info->var.activate = FB_ACTIVATE_NOW;
	info->var.bits_per_pixel = 8;
	info->fbops = &i740fb_ops;
	info->pseudo_palette = par->pseudo_palette;

	ret = FUNC22(dev);
	if (ret) {
		FUNC1(info->device, "cannot enable PCI device\n");
		goto err_enable_device;
	}

	ret = FUNC28(dev, info->fix.id);
	if (ret) {
		FUNC1(info->device, "error requesting regions\n");
		goto err_request_regions;
	}

	info->screen_base = FUNC24(dev, 0);
	if (!info->screen_base) {
		FUNC1(info->device, "error remapping base\n");
		ret = -ENOMEM;
		goto err_ioremap_1;
	}

	par->regs = FUNC23(dev, 1);
	if (!par->regs) {
		FUNC1(info->device, "error remapping MMIO\n");
		ret = -ENOMEM;
		goto err_ioremap_2;
	}

	/* detect memory size */
	if ((FUNC18(par, XRX, DRAM_ROW_TYPE) & DRAM_ROW_1)
							== DRAM_ROW_1_SDRAM)
		FUNC19(par, XRX, DRAM_ROW_BNDRY_1);
	else
		FUNC19(par, XRX, DRAM_ROW_BNDRY_0);
	info->screen_size = FUNC17(par, XRX + 1) * 1024 * 1024;
	/* detect memory type */
	tmp = FUNC18(par, XRX, DRAM_ROW_CNTL_LO);
	par->has_sgram = !((tmp & DRAM_RAS_TIMING) ||
			   (tmp & DRAM_RAS_PRECHARGE));

	FUNC9(info, "Intel740 on %s, %ld KB %s\n",
		FUNC26(dev), info->screen_size >> 10,
		par->has_sgram ? "SGRAM" : "SDRAM");

	info->fix = i740fb_fix;
	info->fix.mmio_start = FUNC30(dev, 1);
	info->fix.mmio_len = FUNC29(dev, 1);
	info->fix.smem_start = FUNC30(dev, 0);
	info->fix.smem_len = info->screen_size;
	info->flags = FBINFO_DEFAULT | FBINFO_HWACCEL_YPAN;

	if (FUNC16(info) == 0) {
		par->ddc_registered = true;
		edid = FUNC3(&par->ddc_adapter);
		if (edid) {
			FUNC6(edid, &info->monspecs);
			FUNC20(edid);
			if (!info->monspecs.modedb)
				FUNC1(info->device,
					"error getting mode database\n");
			else {
				const struct fb_videomode *m;

				FUNC10(
					info->monspecs.modedb,
					info->monspecs.modedb_len,
					&info->modelist);
				m = FUNC7(&info->monspecs,
							 &info->modelist);
				if (m) {
					FUNC11(&info->var, m);
					/* fill all other info->var's fields */
					if (!FUNC15(&info->var, info))
						found = true;
				}
			}
		}
	}

	if (!mode_option && !found)
		mode_option = "640x480-8@60";

	if (mode_option) {
		ret = FUNC8(&info->var, info, mode_option,
				   info->monspecs.modedb,
				   info->monspecs.modedb_len,
				   NULL, info->var.bits_per_pixel);
		if (!ret || ret == 4) {
			FUNC1(info->device, "mode %s not found\n",
				mode_option);
			ret = -EINVAL;
		}
	}

	FUNC5(info->monspecs.modedb);
	info->monspecs.modedb = NULL;

	/* maximize virtual vertical size for fast scrolling */
	info->var.yres_virtual = info->fix.smem_len * 8 /
			(info->var.bits_per_pixel * info->var.xres_virtual);

	if (ret == -EINVAL)
		goto err_find_mode;

	ret = FUNC2(&info->cmap, 256, 0);
	if (ret) {
		FUNC1(info->device, "cannot allocate colormap\n");
		goto err_alloc_cmap;
	}

	ret = FUNC32(info);
	if (ret) {
		FUNC1(info->device, "error registering framebuffer\n");
		goto err_reg_framebuffer;
	}

	FUNC9(info, "%s frame buffer device\n", info->fix.id);
	FUNC31(dev, info);
	if (mtrr)
		par->wc_cookie = FUNC0(info->fix.smem_start,
						  info->fix.smem_len);
	return 0;

err_reg_framebuffer:
	FUNC4(&info->cmap);
err_alloc_cmap:
err_find_mode:
	if (par->ddc_registered)
		FUNC14(&par->ddc_adapter);
	FUNC25(dev, par->regs);
err_ioremap_2:
	FUNC25(dev, info->screen_base);
err_ioremap_1:
	FUNC27(dev);
err_request_regions:
/*	pci_disable_device(dev); */
err_enable_device:
	FUNC13(info);
	return ret;
}