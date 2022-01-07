
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct clk {int dummy; } ;
struct au1100fb_regs {int dummy; } ;
struct TYPE_9__ {scalar_t__ len; } ;
struct TYPE_10__ {int bits_per_pixel; int xres; int xres_virtual; int yres; int yres_virtual; } ;
struct TYPE_11__ {int smem_len; int smem_start; int mmio_start; int mmio_len; } ;
struct TYPE_8__ {TYPE_3__ cmap; TYPE_5__ var; int pseudo_palette; TYPE_6__ fix; int * fbops; int screen_base; } ;
struct au1100fb_device {int regs_len; int fb_len; TYPE_2__ info; struct clk* lcdclk; int fb_mem; TYPE_1__* panel; int fb_phys; int regs_phys; struct au1100fb_regs* regs; int * dev; } ;
struct TYPE_7__ {int xres; int yres; int bpp; } ;


 int AU1100FB_NBR_VIDEO_BUFFERS ;
 int AU1100_LCD_NBR_PALETTE_ENTRIES ;
 int DRIVER_NAME ;
 int EBUSY ;
 int EFAULT ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IS_ERR (struct clk*) ;
 scalar_t__ KSEG1ADDR (int ) ;
 int PAGE_ALIGN (int) ;
 TYPE_6__ au1100fb_fix ;
 int au1100fb_ops ;
 int au1100fb_setmode (struct au1100fb_device*) ;
 scalar_t__ au1100fb_setup (struct au1100fb_device*) ;
 TYPE_5__ au1100fb_var ;
 int clk_disable_unprepare (struct clk*) ;
 struct clk* clk_get (int *,char*) ;
 int clk_prepare_enable (struct clk*) ;
 int clk_put (struct clk*) ;
 int clk_set_rate (struct clk*,int) ;
 int devm_kcalloc (int *,int,int,int ) ;
 struct au1100fb_device* devm_kzalloc (int *,int,int ) ;
 int devm_request_mem_region (int *,int ,int ,int ) ;
 int dmam_alloc_coherent (int *,int ,int *,int ) ;
 scalar_t__ fb_alloc_cmap (TYPE_3__*,int ,int ) ;
 int fb_dealloc_cmap (TYPE_3__*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,void*) ;
 int print_dbg (char*,int ,...) ;
 int print_err (char*,...) ;
 scalar_t__ register_framebuffer (TYPE_2__*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int au1100fb_drv_probe(struct platform_device *dev)
{
 struct au1100fb_device *fbdev;
 struct resource *regs_res;
 struct clk *c;


 fbdev = devm_kzalloc(&dev->dev, sizeof(*fbdev), GFP_KERNEL);
 if (!fbdev)
  return -ENOMEM;

 if (au1100fb_setup(fbdev))
  goto failed;

 platform_set_drvdata(dev, (void *)fbdev);
 fbdev->dev = &dev->dev;


 regs_res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (!regs_res) {
  print_err("fail to retrieve registers resource");
  return -EFAULT;
 }

 au1100fb_fix.mmio_start = regs_res->start;
 au1100fb_fix.mmio_len = resource_size(regs_res);

 if (!devm_request_mem_region(&dev->dev,
         au1100fb_fix.mmio_start,
         au1100fb_fix.mmio_len,
         DRIVER_NAME)) {
  print_err("fail to lock memory region at 0x%08lx",
    au1100fb_fix.mmio_start);
  return -EBUSY;
 }

 fbdev->regs = (struct au1100fb_regs*)KSEG1ADDR(au1100fb_fix.mmio_start);

 print_dbg("Register memory map at %p", fbdev->regs);
 print_dbg("phys=0x%08x, size=%d", fbdev->regs_phys, fbdev->regs_len);

 c = clk_get(((void*)0), "lcd_intclk");
 if (!IS_ERR(c)) {
  fbdev->lcdclk = c;
  clk_set_rate(c, 48000000);
  clk_prepare_enable(c);
 }


 fbdev->fb_len = fbdev->panel->xres * fbdev->panel->yres *
     (fbdev->panel->bpp >> 3) * AU1100FB_NBR_VIDEO_BUFFERS;

 fbdev->fb_mem = dmam_alloc_coherent(&dev->dev,
         PAGE_ALIGN(fbdev->fb_len),
         &fbdev->fb_phys, GFP_KERNEL);
 if (!fbdev->fb_mem) {
  print_err("fail to allocate framebuffer (size: %dK))",
     fbdev->fb_len / 1024);
  return -ENOMEM;
 }

 au1100fb_fix.smem_start = fbdev->fb_phys;
 au1100fb_fix.smem_len = fbdev->fb_len;

 print_dbg("Framebuffer memory map at %p", fbdev->fb_mem);
 print_dbg("phys=0x%08x, size=%dK", fbdev->fb_phys, fbdev->fb_len / 1024);


 au1100fb_var.bits_per_pixel = fbdev->panel->bpp;
 au1100fb_var.xres = fbdev->panel->xres;
 au1100fb_var.xres_virtual = au1100fb_var.xres;
 au1100fb_var.yres = fbdev->panel->yres;
 au1100fb_var.yres_virtual = au1100fb_var.yres;

 fbdev->info.screen_base = fbdev->fb_mem;
 fbdev->info.fbops = &au1100fb_ops;
 fbdev->info.fix = au1100fb_fix;

 fbdev->info.pseudo_palette =
  devm_kcalloc(&dev->dev, 16, sizeof(u32), GFP_KERNEL);
 if (!fbdev->info.pseudo_palette)
  return -ENOMEM;

 if (fb_alloc_cmap(&fbdev->info.cmap, AU1100_LCD_NBR_PALETTE_ENTRIES, 0) < 0) {
  print_err("Fail to allocate colormap (%d entries)",
      AU1100_LCD_NBR_PALETTE_ENTRIES);
  return -EFAULT;
 }

 fbdev->info.var = au1100fb_var;


 au1100fb_setmode(fbdev);


 if (register_framebuffer(&fbdev->info) < 0) {
  print_err("cannot register new framebuffer");
  goto failed;
 }

 return 0;

failed:
 if (fbdev->lcdclk) {
  clk_disable_unprepare(fbdev->lcdclk);
  clk_put(fbdev->lcdclk);
 }
 if (fbdev->info.cmap.len != 0) {
  fb_dealloc_cmap(&fbdev->info.cmap);
 }

 return -ENODEV;
}
