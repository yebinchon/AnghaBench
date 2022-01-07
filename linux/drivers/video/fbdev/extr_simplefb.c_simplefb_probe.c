
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct simplefb_params {TYPE_2__* format; int height; int width; int stride; } ;
struct simplefb_par {int palette; } ;
struct resource {int start; } ;
struct TYPE_14__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_13__ {int line_length; int smem_len; int smem_start; } ;
struct TYPE_12__ {int bits_per_pixel; int yres; int xres; int transp; int blue; int green; int red; int yres_virtual; int xres_virtual; } ;
struct fb_info {int flags; int screen_base; int node; TYPE_4__ fix; TYPE_3__ var; int pseudo_palette; int * fbops; TYPE_9__* apertures; struct simplefb_par* par; } ;
struct TYPE_15__ {TYPE_1__* ranges; } ;
struct TYPE_11__ {int name; int transp; int blue; int green; int red; int bits_per_pixel; } ;
struct TYPE_10__ {int size; int base; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int FBINFO_DEFAULT ;
 int FBINFO_MISC_FIRMWARE ;
 int IORESOURCE_MEM ;
 TYPE_9__* alloc_apertures (int) ;
 int dev_err (TYPE_5__*,char*,...) ;
 scalar_t__ dev_get_platdata (TYPE_5__*) ;
 int dev_info (TYPE_5__*,char*,int ,...) ;
 scalar_t__ fb_get_options (char*,int *) ;
 struct fb_info* framebuffer_alloc (int,TYPE_5__*) ;
 int framebuffer_release (struct fb_info*) ;
 int ioremap_wc (int ,int ) ;
 int iounmap (int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct fb_info*) ;
 int register_framebuffer (struct fb_info*) ;
 int resource_size (struct resource*) ;
 int simplefb_clocks_destroy (struct simplefb_par*) ;
 int simplefb_clocks_enable (struct simplefb_par*,struct platform_device*) ;
 int simplefb_clocks_get (struct simplefb_par*,struct platform_device*) ;
 TYPE_4__ simplefb_fix ;
 int simplefb_ops ;
 int simplefb_parse_dt (struct platform_device*,struct simplefb_params*) ;
 int simplefb_parse_pd (struct platform_device*,struct simplefb_params*) ;
 int simplefb_regulators_destroy (struct simplefb_par*) ;
 int simplefb_regulators_enable (struct simplefb_par*,struct platform_device*) ;
 int simplefb_regulators_get (struct simplefb_par*,struct platform_device*) ;
 TYPE_3__ simplefb_var ;

__attribute__((used)) static int simplefb_probe(struct platform_device *pdev)
{
 int ret;
 struct simplefb_params params;
 struct fb_info *info;
 struct simplefb_par *par;
 struct resource *mem;

 if (fb_get_options("simplefb", ((void*)0)))
  return -ENODEV;

 ret = -ENODEV;
 if (dev_get_platdata(&pdev->dev))
  ret = simplefb_parse_pd(pdev, &params);
 else if (pdev->dev.of_node)
  ret = simplefb_parse_dt(pdev, &params);

 if (ret)
  return ret;

 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!mem) {
  dev_err(&pdev->dev, "No memory resource\n");
  return -EINVAL;
 }

 info = framebuffer_alloc(sizeof(struct simplefb_par), &pdev->dev);
 if (!info)
  return -ENOMEM;
 platform_set_drvdata(pdev, info);

 par = info->par;

 info->fix = simplefb_fix;
 info->fix.smem_start = mem->start;
 info->fix.smem_len = resource_size(mem);
 info->fix.line_length = params.stride;

 info->var = simplefb_var;
 info->var.xres = params.width;
 info->var.yres = params.height;
 info->var.xres_virtual = params.width;
 info->var.yres_virtual = params.height;
 info->var.bits_per_pixel = params.format->bits_per_pixel;
 info->var.red = params.format->red;
 info->var.green = params.format->green;
 info->var.blue = params.format->blue;
 info->var.transp = params.format->transp;

 info->apertures = alloc_apertures(1);
 if (!info->apertures) {
  ret = -ENOMEM;
  goto error_fb_release;
 }
 info->apertures->ranges[0].base = info->fix.smem_start;
 info->apertures->ranges[0].size = info->fix.smem_len;

 info->fbops = &simplefb_ops;
 info->flags = FBINFO_DEFAULT | FBINFO_MISC_FIRMWARE;
 info->screen_base = ioremap_wc(info->fix.smem_start,
           info->fix.smem_len);
 if (!info->screen_base) {
  ret = -ENOMEM;
  goto error_fb_release;
 }
 info->pseudo_palette = par->palette;

 ret = simplefb_clocks_get(par, pdev);
 if (ret < 0)
  goto error_unmap;

 ret = simplefb_regulators_get(par, pdev);
 if (ret < 0)
  goto error_clocks;

 simplefb_clocks_enable(par, pdev);
 simplefb_regulators_enable(par, pdev);

 dev_info(&pdev->dev, "framebuffer at 0x%lx, 0x%x bytes, mapped to 0x%p\n",
        info->fix.smem_start, info->fix.smem_len,
        info->screen_base);
 dev_info(&pdev->dev, "format=%s, mode=%dx%dx%d, linelength=%d\n",
        params.format->name,
        info->var.xres, info->var.yres,
        info->var.bits_per_pixel, info->fix.line_length);

 ret = register_framebuffer(info);
 if (ret < 0) {
  dev_err(&pdev->dev, "Unable to register simplefb: %d\n", ret);
  goto error_regulators;
 }

 dev_info(&pdev->dev, "fb%d: simplefb registered!\n", info->node);

 return 0;

error_regulators:
 simplefb_regulators_destroy(par);
error_clocks:
 simplefb_clocks_destroy(par);
error_unmap:
 iounmap(info->screen_base);
error_fb_release:
 framebuffer_release(info);
 return ret;
}
