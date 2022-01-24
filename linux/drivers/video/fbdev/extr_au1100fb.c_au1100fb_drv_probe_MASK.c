#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;
struct au1100fb_regs {int dummy; } ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_10__ {int bits_per_pixel; int xres; int xres_virtual; int yres; int yres_virtual; } ;
struct TYPE_11__ {int smem_len; int /*<<< orphan*/  smem_start; int /*<<< orphan*/  mmio_start; int /*<<< orphan*/  mmio_len; } ;
struct TYPE_8__ {TYPE_3__ cmap; TYPE_5__ var; int /*<<< orphan*/  pseudo_palette; TYPE_6__ fix; int /*<<< orphan*/ * fbops; int /*<<< orphan*/  screen_base; } ;
struct au1100fb_device {int regs_len; int fb_len; TYPE_2__ info; struct clk* lcdclk; int /*<<< orphan*/  fb_mem; TYPE_1__* panel; int /*<<< orphan*/  fb_phys; int /*<<< orphan*/  regs_phys; struct au1100fb_regs* regs; int /*<<< orphan*/ * dev; } ;
struct TYPE_7__ {int xres; int yres; int bpp; } ;

/* Variables and functions */
 int AU1100FB_NBR_VIDEO_BUFFERS ; 
 int /*<<< orphan*/  AU1100_LCD_NBR_PALETTE_ENTRIES ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EBUSY ; 
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_6__ au1100fb_fix ; 
 int /*<<< orphan*/  au1100fb_ops ; 
 int /*<<< orphan*/  FUNC3 (struct au1100fb_device*) ; 
 scalar_t__ FUNC4 (struct au1100fb_device*) ; 
 TYPE_5__ au1100fb_var ; 
 int /*<<< orphan*/  FUNC5 (struct clk*) ; 
 struct clk* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct clk*) ; 
 int /*<<< orphan*/  FUNC8 (struct clk*) ; 
 int /*<<< orphan*/  FUNC9 (struct clk*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 struct au1100fb_device* FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,void*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 scalar_t__ FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (struct resource*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *dev)
{
	struct au1100fb_device *fbdev;
	struct resource *regs_res;
	struct clk *c;

	/* Allocate new device private */
	fbdev = FUNC11(&dev->dev, sizeof(*fbdev), GFP_KERNEL);
	if (!fbdev)
		return -ENOMEM;

	if (FUNC4(fbdev))
		goto failed;

	FUNC17(dev, (void *)fbdev);
	fbdev->dev = &dev->dev;

	/* Allocate region for our registers and map them */
	regs_res = FUNC16(dev, IORESOURCE_MEM, 0);
	if (!regs_res) {
		FUNC19("fail to retrieve registers resource");
		return -EFAULT;
	}

	au1100fb_fix.mmio_start = regs_res->start;
	au1100fb_fix.mmio_len = FUNC21(regs_res);

	if (!FUNC12(&dev->dev,
				     au1100fb_fix.mmio_start,
				     au1100fb_fix.mmio_len,
				     DRIVER_NAME)) {
		FUNC19("fail to lock memory region at 0x%08lx",
				au1100fb_fix.mmio_start);
		return -EBUSY;
	}

	fbdev->regs = (struct au1100fb_regs*)FUNC1(au1100fb_fix.mmio_start);

	FUNC18("Register memory map at %p", fbdev->regs);
	FUNC18("phys=0x%08x, size=%d", fbdev->regs_phys, fbdev->regs_len);

	c = FUNC6(NULL, "lcd_intclk");
	if (!FUNC0(c)) {
		fbdev->lcdclk = c;
		FUNC9(c, 48000000);
		FUNC7(c);
	}

	/* Allocate the framebuffer to the maximum screen size * nbr of video buffers */
	fbdev->fb_len = fbdev->panel->xres * fbdev->panel->yres *
		  	(fbdev->panel->bpp >> 3) * AU1100FB_NBR_VIDEO_BUFFERS;

	fbdev->fb_mem = FUNC13(&dev->dev,
					    FUNC2(fbdev->fb_len),
					    &fbdev->fb_phys, GFP_KERNEL);
	if (!fbdev->fb_mem) {
		FUNC19("fail to allocate framebuffer (size: %dK))",
			  fbdev->fb_len / 1024);
		return -ENOMEM;
	}

	au1100fb_fix.smem_start = fbdev->fb_phys;
	au1100fb_fix.smem_len = fbdev->fb_len;

	FUNC18("Framebuffer memory map at %p", fbdev->fb_mem);
	FUNC18("phys=0x%08x, size=%dK", fbdev->fb_phys, fbdev->fb_len / 1024);

	/* load the panel info into the var struct */
	au1100fb_var.bits_per_pixel = fbdev->panel->bpp;
	au1100fb_var.xres = fbdev->panel->xres;
	au1100fb_var.xres_virtual = au1100fb_var.xres;
	au1100fb_var.yres = fbdev->panel->yres;
	au1100fb_var.yres_virtual = au1100fb_var.yres;

	fbdev->info.screen_base = fbdev->fb_mem;
	fbdev->info.fbops = &au1100fb_ops;
	fbdev->info.fix = au1100fb_fix;

	fbdev->info.pseudo_palette =
		FUNC10(&dev->dev, 16, sizeof(u32), GFP_KERNEL);
	if (!fbdev->info.pseudo_palette)
		return -ENOMEM;

	if (FUNC14(&fbdev->info.cmap, AU1100_LCD_NBR_PALETTE_ENTRIES, 0) < 0) {
		FUNC19("Fail to allocate colormap (%d entries)",
			   AU1100_LCD_NBR_PALETTE_ENTRIES);
		return -EFAULT;
	}

	fbdev->info.var = au1100fb_var;

	/* Set h/w registers */
	FUNC3(fbdev);

	/* Register new framebuffer */
	if (FUNC20(&fbdev->info) < 0) {
		FUNC19("cannot register new framebuffer");
		goto failed;
	}

	return 0;

failed:
	if (fbdev->lcdclk) {
		FUNC5(fbdev->lcdclk);
		FUNC8(fbdev->lcdclk);
	}
	if (fbdev->info.cmap.len != 0) {
		FUNC15(&fbdev->info.cmap);
	}

	return -ENODEV;
}