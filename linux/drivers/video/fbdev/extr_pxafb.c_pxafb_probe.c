
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct resource {int dummy; } ;
struct pxafb_mach_info {int num_modes; int pxafb_lcd_power; int pxafb_backlight_power; scalar_t__ acceleration_enabled; TYPE_6__* modes; } ;
struct TYPE_10__ {scalar_t__ len; } ;
struct TYPE_8__ {int accel; } ;
struct TYPE_9__ {TYPE_5__ cmap; int var; TYPE_1__ fix; } ;
struct TYPE_12__ {int notifier_call; } ;
struct pxafb_info {int dma_buff_phys; int * dma_buff; int dma_buff_size; int video_mem_size; int video_mem; TYPE_2__ fb; TYPE_7__ freq_transition; int dev; struct pxafb_info* mmio_base; struct pxafb_info* lcd_supply; int lcd_power; int backlight_power; } ;
struct pxafb_dma_buff {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_11__ {scalar_t__ xres; scalar_t__ yres; scalar_t__ bpp; } ;


 int CPUFREQ_TRANSITION_NOTIFIER ;
 int C_ENABLE ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int FB_ACCEL_PXA3XX ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct pxafb_info*) ;
 scalar_t__ IS_ERR_OR_NULL (struct pxafb_mach_info*) ;
 int PAGE_ALIGN (int) ;
 int PTR_ERR (struct pxafb_info*) ;
 scalar_t__ cpu_is_pxa3xx () ;
 int cpufreq_register_notifier (TYPE_7__*,int ) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 struct pxafb_mach_info* dev_get_platdata (int *) ;
 struct pxafb_info* devm_ioremap_resource (int *,struct resource*) ;
 struct pxafb_mach_info* devm_kmalloc (int *,int,int ) ;
 TYPE_6__* devm_kmalloc_array (int *,int,int,int ) ;
 struct pxafb_info* devm_regulator_get_optional (int *,char*) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct pxafb_info*) ;
 int * dma_alloc_coherent (int ,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int fb_dealloc_cmap (TYPE_5__*) ;
 int free_pages_exact (int ,int ) ;
 int g_options ;
 struct pxafb_mach_info* of_pxafb_of_mach_info (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pxafb_info*) ;
 int pxafb_check_options (int *,struct pxafb_mach_info*) ;
 int pxafb_check_var (int *,TYPE_2__*) ;
 int pxafb_freq_transition ;
 int pxafb_handle_irq ;
 struct pxafb_info* pxafb_init_fbinfo (int *,struct pxafb_mach_info*) ;
 int pxafb_init_video_memory (struct pxafb_info*) ;
 int pxafb_overlay_init (struct pxafb_info*) ;
 int pxafb_parse_options (int *,int ,struct pxafb_mach_info*) ;
 int pxafb_set_par (TYPE_2__*) ;
 int pxafb_smart_init (struct pxafb_info*) ;
 int register_framebuffer (TYPE_2__*) ;
 int set_ctrlr_state (struct pxafb_info*,int ) ;

__attribute__((used)) static int pxafb_probe(struct platform_device *dev)
{
 struct pxafb_info *fbi;
 struct pxafb_mach_info *inf, *pdata;
 struct resource *r;
 int i, irq, ret;

 dev_dbg(&dev->dev, "pxafb_probe\n");

 ret = -ENOMEM;
 pdata = dev_get_platdata(&dev->dev);
 inf = devm_kmalloc(&dev->dev, sizeof(*inf), GFP_KERNEL);
 if (!inf)
  goto failed;

 if (pdata) {
  *inf = *pdata;
  inf->modes =
   devm_kmalloc_array(&dev->dev, pdata->num_modes,
        sizeof(inf->modes[0]), GFP_KERNEL);
  if (!inf->modes)
   goto failed;
  for (i = 0; i < inf->num_modes; i++)
   inf->modes[i] = pdata->modes[i];
 }

 if (!pdata)
  inf = of_pxafb_of_mach_info(&dev->dev);
 if (IS_ERR_OR_NULL(inf))
  goto failed;

 ret = pxafb_parse_options(&dev->dev, g_options, inf);
 if (ret < 0)
  goto failed;

 pxafb_check_options(&dev->dev, inf);

 dev_dbg(&dev->dev, "got a %dx%dx%d LCD\n",
   inf->modes->xres,
   inf->modes->yres,
   inf->modes->bpp);
 if (inf->modes->xres == 0 ||
     inf->modes->yres == 0 ||
     inf->modes->bpp == 0) {
  dev_err(&dev->dev, "Invalid resolution or bit depth\n");
  ret = -EINVAL;
  goto failed;
 }

 fbi = pxafb_init_fbinfo(&dev->dev, inf);
 if (IS_ERR(fbi)) {
  dev_err(&dev->dev, "Failed to initialize framebuffer device\n");
  ret = PTR_ERR(fbi);
  goto failed;
 }

 if (cpu_is_pxa3xx() && inf->acceleration_enabled)
  fbi->fb.fix.accel = FB_ACCEL_PXA3XX;

 fbi->backlight_power = inf->pxafb_backlight_power;
 fbi->lcd_power = inf->pxafb_lcd_power;

 fbi->lcd_supply = devm_regulator_get_optional(&dev->dev, "lcd");
 if (IS_ERR(fbi->lcd_supply)) {
  if (PTR_ERR(fbi->lcd_supply) == -EPROBE_DEFER)
   return -EPROBE_DEFER;

  fbi->lcd_supply = ((void*)0);
 }

 r = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (r == ((void*)0)) {
  dev_err(&dev->dev, "no I/O memory resource defined\n");
  ret = -ENODEV;
  goto failed;
 }

 fbi->mmio_base = devm_ioremap_resource(&dev->dev, r);
 if (IS_ERR(fbi->mmio_base)) {
  dev_err(&dev->dev, "failed to get I/O memory\n");
  ret = -EBUSY;
  goto failed;
 }

 fbi->dma_buff_size = PAGE_ALIGN(sizeof(struct pxafb_dma_buff));
 fbi->dma_buff = dma_alloc_coherent(fbi->dev, fbi->dma_buff_size,
    &fbi->dma_buff_phys, GFP_KERNEL);
 if (fbi->dma_buff == ((void*)0)) {
  dev_err(&dev->dev, "failed to allocate memory for DMA\n");
  ret = -ENOMEM;
  goto failed;
 }

 ret = pxafb_init_video_memory(fbi);
 if (ret) {
  dev_err(&dev->dev, "Failed to allocate video RAM: %d\n", ret);
  ret = -ENOMEM;
  goto failed_free_dma;
 }

 irq = platform_get_irq(dev, 0);
 if (irq < 0) {
  dev_err(&dev->dev, "no IRQ defined\n");
  ret = -ENODEV;
  goto failed_free_mem;
 }

 ret = devm_request_irq(&dev->dev, irq, pxafb_handle_irq, 0, "LCD", fbi);
 if (ret) {
  dev_err(&dev->dev, "request_irq failed: %d\n", ret);
  ret = -EBUSY;
  goto failed_free_mem;
 }

 ret = pxafb_smart_init(fbi);
 if (ret) {
  dev_err(&dev->dev, "failed to initialize smartpanel\n");
  goto failed_free_mem;
 }





 ret = pxafb_check_var(&fbi->fb.var, &fbi->fb);
 if (ret) {
  dev_err(&dev->dev, "failed to get suitable mode\n");
  goto failed_free_mem;
 }

 ret = pxafb_set_par(&fbi->fb);
 if (ret) {
  dev_err(&dev->dev, "Failed to set parameters\n");
  goto failed_free_mem;
 }

 platform_set_drvdata(dev, fbi);

 ret = register_framebuffer(&fbi->fb);
 if (ret < 0) {
  dev_err(&dev->dev,
   "Failed to register framebuffer device: %d\n", ret);
  goto failed_free_cmap;
 }

 pxafb_overlay_init(fbi);
 set_ctrlr_state(fbi, C_ENABLE);

 return 0;

failed_free_cmap:
 if (fbi->fb.cmap.len)
  fb_dealloc_cmap(&fbi->fb.cmap);
failed_free_mem:
 free_pages_exact(fbi->video_mem, fbi->video_mem_size);
failed_free_dma:
 dma_free_coherent(&dev->dev, fbi->dma_buff_size,
   fbi->dma_buff, fbi->dma_buff_phys);
failed:
 return ret;
}
