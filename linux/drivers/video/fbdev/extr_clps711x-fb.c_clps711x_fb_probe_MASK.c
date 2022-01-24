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
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct lcd_device {int dummy; } ;
struct TYPE_8__ {int activate; int height; int width; int /*<<< orphan*/  vmode; int /*<<< orphan*/  bits_per_pixel; } ;
struct TYPE_7__ {int mmio_start; int smem_start; int /*<<< orphan*/  id; int /*<<< orphan*/  accel; int /*<<< orphan*/  type; void* mmio_len; } ;
struct fb_info {int /*<<< orphan*/  cmap; TYPE_3__ var; TYPE_2__ fix; int /*<<< orphan*/  flags; int /*<<< orphan*/ * fbops; struct lcd_device* screen_base; TYPE_5__* apertures; struct clps711x_fb_info* par; } ;
struct device_node {int dummy; } ;
struct clps711x_fb_info {struct lcd_device* syscon; int /*<<< orphan*/  mode; struct lcd_device* lcd_pwr; void* buffsize; scalar_t__ base; int /*<<< orphan*/  cmap_invert; int /*<<< orphan*/  ac_prescale; struct lcd_device* clk; } ;
struct TYPE_9__ {TYPE_1__* ranges; } ;
struct TYPE_6__ {int base; void* size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CLPS711X_FBADDR ; 
 int /*<<< orphan*/  CLPS711X_FB_BPP_MAX ; 
 int /*<<< orphan*/  CLPS711X_FB_NAME ; 
 int EINVAL ; 
 int ENODATA ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FBINFO_DEFAULT ; 
 int /*<<< orphan*/  FB_ACCEL_NONE ; 
 int FB_ACTIVATE_FORCE ; 
 int FB_ACTIVATE_NOW ; 
 int /*<<< orphan*/  FB_TYPE_PACKED_PIXELS ; 
 int /*<<< orphan*/  FB_VMODE_NONINTERLACED ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (struct lcd_device*) ; 
 int /*<<< orphan*/  OF_USE_NATIVE_MODE ; 
 int FUNC2 (struct lcd_device*) ; 
 int SYSCON1_LCDEN ; 
 int /*<<< orphan*/  SYSCON_OFFSET ; 
 TYPE_5__* FUNC3 (int) ; 
 int /*<<< orphan*/  clps711x_fb_ops ; 
 int /*<<< orphan*/  clps711x_lcd_ops ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct lcd_device* FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct device*,int,void*) ; 
 struct lcd_device* FUNC7 (struct device*,struct resource*) ; 
 struct lcd_device* FUNC8 (struct device*,char*,struct device*,struct clps711x_fb_info*,int /*<<< orphan*/ *) ; 
 struct lcd_device* FUNC9 (struct device*,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct fb_info*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 struct fb_info* FUNC15 (int,struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct lcd_device*,int /*<<< orphan*/ ,void*) ; 
 int FUNC18 (struct device_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct device_node*) ; 
 struct device_node* FUNC20 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct device_node*,char*) ; 
 int FUNC22 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC23 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*,struct fb_info*) ; 
 int FUNC25 (scalar_t__) ; 
 int FUNC26 (struct fb_info*) ; 
 int FUNC27 (struct lcd_device*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC28 (struct lcd_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC29 (struct resource*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct lcd_device* FUNC31 (char*) ; 
 int /*<<< orphan*/  FUNC32 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC33 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC34(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *disp, *np = dev->of_node;
	struct clps711x_fb_info *cfb;
	struct lcd_device *lcd;
	struct fb_info *info;
	struct resource *res;
	int ret = -ENOENT;
	u32 val;

	if (FUNC12(CLPS711X_FB_NAME, NULL))
		return -ENODEV;

	info = FUNC15(sizeof(*cfb), dev);
	if (!info)
		return -ENOMEM;

	cfb = info->par;
	FUNC24(pdev, info);

	res = FUNC23(pdev, IORESOURCE_MEM, 0);
	if (!res)
		goto out_fb_release;
	cfb->base = FUNC6(dev, res->start, FUNC29(res));
	if (!cfb->base) {
		ret = -ENOMEM;
		goto out_fb_release;
	}

	info->fix.mmio_start = res->start;
	info->fix.mmio_len = FUNC29(res);

	res = FUNC23(pdev, IORESOURCE_MEM, 1);
	info->screen_base = FUNC7(dev, res);
	if (FUNC1(info->screen_base)) {
		ret = FUNC2(info->screen_base);
		goto out_fb_release;
	}

	/* Physical address should be aligned to 256 MiB */
	if (res->start & 0x0fffffff) {
		ret = -EINVAL;
		goto out_fb_release;
	}

	info->apertures = FUNC3(1);
	if (!info->apertures) {
		ret = -ENOMEM;
		goto out_fb_release;
	}

	cfb->buffsize = FUNC29(res);
	info->fix.smem_start = res->start;
	info->apertures->ranges[0].base = info->fix.smem_start;
	info->apertures->ranges[0].size = cfb->buffsize;

	cfb->clk = FUNC5(dev, NULL);
	if (FUNC1(cfb->clk)) {
		ret = FUNC2(cfb->clk);
		goto out_fb_release;
	}

	cfb->syscon =
		FUNC31("cirrus,ep7209-syscon1");
	if (FUNC1(cfb->syscon)) {
		ret = FUNC2(cfb->syscon);
		goto out_fb_release;
	}

	disp = FUNC20(np, "display", 0);
	if (!disp) {
		FUNC4(&pdev->dev, "No display defined\n");
		ret = -ENODATA;
		goto out_fb_release;
	}

	ret = FUNC18(disp, &cfb->mode, OF_USE_NATIVE_MODE);
	if (ret) {
		FUNC19(disp);
		goto out_fb_release;
	}

	FUNC22(disp, "ac-prescale", &cfb->ac_prescale);
	cfb->cmap_invert = FUNC21(disp, "cmap-invert");

	ret = FUNC22(disp, "bits-per-pixel",
				   &info->var.bits_per_pixel);
	FUNC19(disp);
	if (ret)
		goto out_fb_release;

	/* Force disable LCD on any mismatch */
	if (info->fix.smem_start != (FUNC25(cfb->base + CLPS711X_FBADDR) << 28))
		FUNC28(cfb->syscon, SYSCON_OFFSET,
				   SYSCON1_LCDEN, 0);

	ret = FUNC27(cfb->syscon, SYSCON_OFFSET, &val);
	if (ret)
		goto out_fb_release;

	if (!(val & SYSCON1_LCDEN)) {
		/* Setup start FB address */
		FUNC33(info->fix.smem_start >> 28, cfb->base + CLPS711X_FBADDR);
		/* Clean FB memory */
		FUNC17(info->screen_base, 0, cfb->buffsize);
	}

	cfb->lcd_pwr = FUNC9(dev, "lcd");
	if (FUNC2(cfb->lcd_pwr) == -EPROBE_DEFER) {
		ret = -EPROBE_DEFER;
		goto out_fb_release;
	}

	info->fbops = &clps711x_fb_ops;
	info->flags = FBINFO_DEFAULT;
	info->var.activate = FB_ACTIVATE_FORCE | FB_ACTIVATE_NOW;
	info->var.height = -1;
	info->var.width = -1;
	info->var.vmode = FB_VMODE_NONINTERLACED;
	info->fix.type = FB_TYPE_PACKED_PIXELS;
	info->fix.accel = FB_ACCEL_NONE;
	FUNC30(info->fix.id, CLPS711X_FB_NAME, sizeof(info->fix.id));
	FUNC14(&info->var, &cfb->mode);

	ret = FUNC10(&info->cmap, FUNC0(CLPS711X_FB_BPP_MAX), 0);
	if (ret)
		goto out_fb_release;

	ret = FUNC13(info, &info->var);
	if (ret)
		goto out_fb_dealloc_cmap;

	ret = FUNC26(info);
	if (ret)
		goto out_fb_dealloc_cmap;

	lcd = FUNC8(dev, "clps711x-lcd", dev, cfb,
				       &clps711x_lcd_ops);
	if (!FUNC1(lcd))
		return 0;
	
	ret = FUNC2(lcd);
	FUNC32(info);

out_fb_dealloc_cmap:
	FUNC28(cfb->syscon, SYSCON_OFFSET, SYSCON1_LCDEN, 0);
	FUNC11(&info->cmap);

out_fb_release:
	FUNC16(info);

	return ret;
}