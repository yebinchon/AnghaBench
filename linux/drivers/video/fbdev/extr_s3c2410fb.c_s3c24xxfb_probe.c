
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct s3c2410fb_mach_info {int default_display; int num_displays; struct s3c2410fb_display* displays; } ;
struct s3c2410fb_info {int drv_type; int * io; int clk; int clk_rate; int * palette_buffer; int pseudo_pal; int * irq_base; int * mem; int * dev; } ;
struct s3c2410fb_display {unsigned long xres; unsigned long yres; unsigned long bpp; } ;
struct resource {int start; } ;
struct platform_device {int dev; int name; } ;
struct TYPE_3__ {unsigned long smem_len; int id; int accel; scalar_t__ ywrapstep; scalar_t__ ypanstep; scalar_t__ xpanstep; scalar_t__ type_aux; int type; } ;
struct TYPE_4__ {unsigned long xres; unsigned long yres; unsigned long bits_per_pixel; int vmode; scalar_t__ accel_flags; int activate; scalar_t__ nonstd; } ;
struct fb_info {TYPE_1__ fix; int node; TYPE_2__ var; int * pseudo_palette; int flags; int * fbops; struct s3c2410fb_info* par; } ;
typedef enum s3c_drv_type { ____Placeholder_s3c_drv_type } s3c_drv_type ;


 int DRV_S3C2412 ;
 int EBUSY ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int FBINFO_FLAG_DEFAULT ;
 int FB_ACCEL_NONE ;
 int FB_ACTIVATE_NOW ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VMODE_NONINTERLACED ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PALETTE_BUFF_CLEAR ;
 int PTR_ERR (int ) ;
 int S3C2410_LCDCON1 ;
 int S3C2410_LCDCON1_ENVID ;
 int S3C2410_LCDINTBASE ;
 int S3C2412_LCDINTBASE ;
 int clk_disable_unprepare (int ) ;
 int clk_get (int *,char*) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_put (int ) ;
 int dev_attr_debug ;
 int dev_err (int *,char*,...) ;
 struct s3c2410fb_mach_info* dev_get_platdata (int *) ;
 int dev_info (int *,char*,int ,int ) ;
 int device_create_file (int *,int *) ;
 int dprintk (char*) ;
 int driver_name ;
 struct fb_info* framebuffer_alloc (int,int *) ;
 int framebuffer_release (struct fb_info*) ;
 int free_irq (int,struct s3c2410fb_info*) ;
 int * ioremap (int ,int) ;
 int iounmap (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct fb_info*) ;
 int readl (int *) ;
 int register_framebuffer (struct fb_info*) ;
 int release_mem_region (int ,int) ;
 int request_irq (int,int ,int ,int ,struct s3c2410fb_info*) ;
 int * request_mem_region (int ,int,int ) ;
 int resource_size (struct resource*) ;
 int s3c2410fb_check_var (TYPE_2__*,struct fb_info*) ;
 int s3c2410fb_cpufreq_deregister (struct s3c2410fb_info*) ;
 int s3c2410fb_cpufreq_register (struct s3c2410fb_info*) ;
 int s3c2410fb_init_registers (struct fb_info*) ;
 int s3c2410fb_irq ;
 int s3c2410fb_map_video_memory (struct fb_info*) ;
 int s3c2410fb_ops ;
 int s3c2410fb_unmap_video_memory (struct fb_info*) ;
 int strcpy (int ,int ) ;
 int usleep_range (int,int) ;
 int writel (int,int *) ;

__attribute__((used)) static int s3c24xxfb_probe(struct platform_device *pdev,
      enum s3c_drv_type drv_type)
{
 struct s3c2410fb_info *info;
 struct s3c2410fb_display *display;
 struct fb_info *fbinfo;
 struct s3c2410fb_mach_info *mach_info;
 struct resource *res;
 int ret;
 int irq;
 int i;
 int size;
 u32 lcdcon1;

 mach_info = dev_get_platdata(&pdev->dev);
 if (mach_info == ((void*)0)) {
  dev_err(&pdev->dev,
   "no platform data for lcd, cannot attach\n");
  return -EINVAL;
 }

 if (mach_info->default_display >= mach_info->num_displays) {
  dev_err(&pdev->dev, "default is %d but only %d displays\n",
   mach_info->default_display, mach_info->num_displays);
  return -EINVAL;
 }

 display = mach_info->displays + mach_info->default_display;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(&pdev->dev, "no irq for device\n");
  return -ENOENT;
 }

 fbinfo = framebuffer_alloc(sizeof(struct s3c2410fb_info), &pdev->dev);
 if (!fbinfo)
  return -ENOMEM;

 platform_set_drvdata(pdev, fbinfo);

 info = fbinfo->par;
 info->dev = &pdev->dev;
 info->drv_type = drv_type;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "failed to get memory registers\n");
  ret = -ENXIO;
  goto dealloc_fb;
 }

 size = resource_size(res);
 info->mem = request_mem_region(res->start, size, pdev->name);
 if (info->mem == ((void*)0)) {
  dev_err(&pdev->dev, "failed to get memory region\n");
  ret = -ENOENT;
  goto dealloc_fb;
 }

 info->io = ioremap(res->start, size);
 if (info->io == ((void*)0)) {
  dev_err(&pdev->dev, "ioremap() of registers failed\n");
  ret = -ENXIO;
  goto release_mem;
 }

 if (drv_type == DRV_S3C2412)
  info->irq_base = info->io + S3C2412_LCDINTBASE;
 else
  info->irq_base = info->io + S3C2410_LCDINTBASE;

 dprintk("devinit\n");

 strcpy(fbinfo->fix.id, driver_name);


 lcdcon1 = readl(info->io + S3C2410_LCDCON1);
 writel(lcdcon1 & ~S3C2410_LCDCON1_ENVID, info->io + S3C2410_LCDCON1);

 fbinfo->fix.type = FB_TYPE_PACKED_PIXELS;
 fbinfo->fix.type_aux = 0;
 fbinfo->fix.xpanstep = 0;
 fbinfo->fix.ypanstep = 0;
 fbinfo->fix.ywrapstep = 0;
 fbinfo->fix.accel = FB_ACCEL_NONE;

 fbinfo->var.nonstd = 0;
 fbinfo->var.activate = FB_ACTIVATE_NOW;
 fbinfo->var.accel_flags = 0;
 fbinfo->var.vmode = FB_VMODE_NONINTERLACED;

 fbinfo->fbops = &s3c2410fb_ops;
 fbinfo->flags = FBINFO_FLAG_DEFAULT;
 fbinfo->pseudo_palette = &info->pseudo_pal;

 for (i = 0; i < 256; i++)
  info->palette_buffer[i] = PALETTE_BUFF_CLEAR;

 ret = request_irq(irq, s3c2410fb_irq, 0, pdev->name, info);
 if (ret) {
  dev_err(&pdev->dev, "cannot get irq %d - err %d\n", irq, ret);
  ret = -EBUSY;
  goto release_regs;
 }

 info->clk = clk_get(((void*)0), "lcd");
 if (IS_ERR(info->clk)) {
  dev_err(&pdev->dev, "failed to get lcd clock source\n");
  ret = PTR_ERR(info->clk);
  goto release_irq;
 }

 clk_prepare_enable(info->clk);
 dprintk("got and enabled clock\n");

 usleep_range(1000, 1100);

 info->clk_rate = clk_get_rate(info->clk);


 for (i = 0; i < mach_info->num_displays; i++) {
  unsigned long smem_len = mach_info->displays[i].xres;

  smem_len *= mach_info->displays[i].yres;
  smem_len *= mach_info->displays[i].bpp;
  smem_len >>= 3;
  if (fbinfo->fix.smem_len < smem_len)
   fbinfo->fix.smem_len = smem_len;
 }


 ret = s3c2410fb_map_video_memory(fbinfo);
 if (ret) {
  dev_err(&pdev->dev, "Failed to allocate video RAM: %d\n", ret);
  ret = -ENOMEM;
  goto release_clock;
 }

 dprintk("got video memory\n");

 fbinfo->var.xres = display->xres;
 fbinfo->var.yres = display->yres;
 fbinfo->var.bits_per_pixel = display->bpp;

 s3c2410fb_init_registers(fbinfo);

 s3c2410fb_check_var(&fbinfo->var, fbinfo);

 ret = s3c2410fb_cpufreq_register(info);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register cpufreq\n");
  goto free_video_memory;
 }

 ret = register_framebuffer(fbinfo);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register framebuffer device: %d\n",
   ret);
  goto free_cpufreq;
 }


 ret = device_create_file(&pdev->dev, &dev_attr_debug);
 if (ret)
  dev_err(&pdev->dev, "failed to add debug attribute\n");

 dev_info(&pdev->dev, "fb%d: %s frame buffer device\n",
  fbinfo->node, fbinfo->fix.id);

 return 0;

 free_cpufreq:
 s3c2410fb_cpufreq_deregister(info);
free_video_memory:
 s3c2410fb_unmap_video_memory(fbinfo);
release_clock:
 clk_disable_unprepare(info->clk);
 clk_put(info->clk);
release_irq:
 free_irq(irq, info);
release_regs:
 iounmap(info->io);
release_mem:
 release_mem_region(res->start, size);
dealloc_fb:
 framebuffer_release(fbinfo);
 return ret;
}
