
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct lcd_device {int dummy; } ;
struct TYPE_8__ {int activate; int height; int width; int vmode; int bits_per_pixel; } ;
struct TYPE_7__ {int mmio_start; int smem_start; int id; int accel; int type; void* mmio_len; } ;
struct fb_info {int cmap; TYPE_3__ var; TYPE_2__ fix; int flags; int * fbops; struct lcd_device* screen_base; TYPE_5__* apertures; struct clps711x_fb_info* par; } ;
struct device_node {int dummy; } ;
struct clps711x_fb_info {struct lcd_device* syscon; int mode; struct lcd_device* lcd_pwr; void* buffsize; scalar_t__ base; int cmap_invert; int ac_prescale; struct lcd_device* clk; } ;
struct TYPE_9__ {TYPE_1__* ranges; } ;
struct TYPE_6__ {int base; void* size; } ;


 int BIT (int ) ;
 scalar_t__ CLPS711X_FBADDR ;
 int CLPS711X_FB_BPP_MAX ;
 int CLPS711X_FB_NAME ;
 int EINVAL ;
 int ENODATA ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int FBINFO_DEFAULT ;
 int FB_ACCEL_NONE ;
 int FB_ACTIVATE_FORCE ;
 int FB_ACTIVATE_NOW ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VMODE_NONINTERLACED ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct lcd_device*) ;
 int OF_USE_NATIVE_MODE ;
 int PTR_ERR (struct lcd_device*) ;
 int SYSCON1_LCDEN ;
 int SYSCON_OFFSET ;
 TYPE_5__* alloc_apertures (int) ;
 int clps711x_fb_ops ;
 int clps711x_lcd_ops ;
 int dev_err (struct device*,char*) ;
 struct lcd_device* devm_clk_get (struct device*,int *) ;
 scalar_t__ devm_ioremap (struct device*,int,void*) ;
 struct lcd_device* devm_ioremap_resource (struct device*,struct resource*) ;
 struct lcd_device* devm_lcd_device_register (struct device*,char*,struct device*,struct clps711x_fb_info*,int *) ;
 struct lcd_device* devm_regulator_get (struct device*,char*) ;
 int fb_alloc_cmap (int *,int ,int ) ;
 int fb_dealloc_cmap (int *) ;
 scalar_t__ fb_get_options (int ,int *) ;
 int fb_set_var (struct fb_info*,TYPE_3__*) ;
 int fb_videomode_to_var (TYPE_3__*,int *) ;
 struct fb_info* framebuffer_alloc (int,struct device*) ;
 int framebuffer_release (struct fb_info*) ;
 int memset_io (struct lcd_device*,int ,void*) ;
 int of_get_fb_videomode (struct device_node*,int *,int ) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int ) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct fb_info*) ;
 int readb (scalar_t__) ;
 int register_framebuffer (struct fb_info*) ;
 int regmap_read (struct lcd_device*,int ,int*) ;
 int regmap_update_bits (struct lcd_device*,int ,int,int ) ;
 void* resource_size (struct resource*) ;
 int strlcpy (int ,int ,int) ;
 struct lcd_device* syscon_regmap_lookup_by_compatible (char*) ;
 int unregister_framebuffer (struct fb_info*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int clps711x_fb_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *disp, *np = dev->of_node;
 struct clps711x_fb_info *cfb;
 struct lcd_device *lcd;
 struct fb_info *info;
 struct resource *res;
 int ret = -ENOENT;
 u32 val;

 if (fb_get_options(CLPS711X_FB_NAME, ((void*)0)))
  return -ENODEV;

 info = framebuffer_alloc(sizeof(*cfb), dev);
 if (!info)
  return -ENOMEM;

 cfb = info->par;
 platform_set_drvdata(pdev, info);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  goto out_fb_release;
 cfb->base = devm_ioremap(dev, res->start, resource_size(res));
 if (!cfb->base) {
  ret = -ENOMEM;
  goto out_fb_release;
 }

 info->fix.mmio_start = res->start;
 info->fix.mmio_len = resource_size(res);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 info->screen_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(info->screen_base)) {
  ret = PTR_ERR(info->screen_base);
  goto out_fb_release;
 }


 if (res->start & 0x0fffffff) {
  ret = -EINVAL;
  goto out_fb_release;
 }

 info->apertures = alloc_apertures(1);
 if (!info->apertures) {
  ret = -ENOMEM;
  goto out_fb_release;
 }

 cfb->buffsize = resource_size(res);
 info->fix.smem_start = res->start;
 info->apertures->ranges[0].base = info->fix.smem_start;
 info->apertures->ranges[0].size = cfb->buffsize;

 cfb->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(cfb->clk)) {
  ret = PTR_ERR(cfb->clk);
  goto out_fb_release;
 }

 cfb->syscon =
  syscon_regmap_lookup_by_compatible("cirrus,ep7209-syscon1");
 if (IS_ERR(cfb->syscon)) {
  ret = PTR_ERR(cfb->syscon);
  goto out_fb_release;
 }

 disp = of_parse_phandle(np, "display", 0);
 if (!disp) {
  dev_err(&pdev->dev, "No display defined\n");
  ret = -ENODATA;
  goto out_fb_release;
 }

 ret = of_get_fb_videomode(disp, &cfb->mode, OF_USE_NATIVE_MODE);
 if (ret) {
  of_node_put(disp);
  goto out_fb_release;
 }

 of_property_read_u32(disp, "ac-prescale", &cfb->ac_prescale);
 cfb->cmap_invert = of_property_read_bool(disp, "cmap-invert");

 ret = of_property_read_u32(disp, "bits-per-pixel",
       &info->var.bits_per_pixel);
 of_node_put(disp);
 if (ret)
  goto out_fb_release;


 if (info->fix.smem_start != (readb(cfb->base + CLPS711X_FBADDR) << 28))
  regmap_update_bits(cfb->syscon, SYSCON_OFFSET,
       SYSCON1_LCDEN, 0);

 ret = regmap_read(cfb->syscon, SYSCON_OFFSET, &val);
 if (ret)
  goto out_fb_release;

 if (!(val & SYSCON1_LCDEN)) {

  writeb(info->fix.smem_start >> 28, cfb->base + CLPS711X_FBADDR);

  memset_io(info->screen_base, 0, cfb->buffsize);
 }

 cfb->lcd_pwr = devm_regulator_get(dev, "lcd");
 if (PTR_ERR(cfb->lcd_pwr) == -EPROBE_DEFER) {
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
 strlcpy(info->fix.id, CLPS711X_FB_NAME, sizeof(info->fix.id));
 fb_videomode_to_var(&info->var, &cfb->mode);

 ret = fb_alloc_cmap(&info->cmap, BIT(CLPS711X_FB_BPP_MAX), 0);
 if (ret)
  goto out_fb_release;

 ret = fb_set_var(info, &info->var);
 if (ret)
  goto out_fb_dealloc_cmap;

 ret = register_framebuffer(info);
 if (ret)
  goto out_fb_dealloc_cmap;

 lcd = devm_lcd_device_register(dev, "clps711x-lcd", dev, cfb,
           &clps711x_lcd_ops);
 if (!IS_ERR(lcd))
  return 0;

 ret = PTR_ERR(lcd);
 unregister_framebuffer(info);

out_fb_dealloc_cmap:
 regmap_update_bits(cfb->syscon, SYSCON_OFFSET, SYSCON1_LCDEN, 0);
 fb_dealloc_cmap(&info->cmap);

out_fb_release:
 framebuffer_release(info);

 return ret;
}
