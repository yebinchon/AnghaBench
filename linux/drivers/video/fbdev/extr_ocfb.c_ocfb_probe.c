
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_4__ {int smem_len; int smem_start; } ;
struct TYPE_5__ {int cmap; int flags; int pseudo_palette; scalar_t__ screen_base; TYPE_1__ fix; int var; struct ocfb_dev* par; int * device; int * fbops; } ;
struct ocfb_dev {int fb_phys; scalar_t__ fb_virt; TYPE_2__ info; scalar_t__ little_endian; int pseudo_palette; int regs; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int FBINFO_FOREIGN_ENDIAN ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PAGE_ALIGN (int) ;
 int PALETTE_SIZE ;
 int PTR_ERR (int ) ;
 int default_mode ;
 int dev_err (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct ocfb_dev* devm_kzalloc (int *,int,int ) ;
 scalar_t__ dma_alloc_coherent (int *,int ,int *,int ) ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int fb_alloc_cmap (int *,int ,int ) ;
 int fb_dealloc_cmap (int *) ;
 int fb_find_mode (int *,TYPE_2__*,int ,int *,int ,int *,int) ;
 int memset_io (scalar_t__,int ,int) ;
 int mode_option ;
 int ocfb_init_fix (struct ocfb_dev*) ;
 int ocfb_init_var (struct ocfb_dev*) ;
 int ocfb_ops ;
 int ocfb_setupfb (struct ocfb_dev*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ocfb_dev*) ;
 int register_framebuffer (TYPE_2__*) ;

__attribute__((used)) static int ocfb_probe(struct platform_device *pdev)
{
 int ret = 0;
 struct ocfb_dev *fbdev;
 struct resource *res;
 int fbsize;

 fbdev = devm_kzalloc(&pdev->dev, sizeof(*fbdev), GFP_KERNEL);
 if (!fbdev)
  return -ENOMEM;

 platform_set_drvdata(pdev, fbdev);

 fbdev->info.fbops = &ocfb_ops;
 fbdev->info.device = &pdev->dev;
 fbdev->info.par = fbdev;


 if (!fb_find_mode(&fbdev->info.var, &fbdev->info, mode_option,
     ((void*)0), 0, &default_mode, 16)) {
  dev_err(&pdev->dev, "No valid video modes found\n");
  return -EINVAL;
 }
 ocfb_init_var(fbdev);
 ocfb_init_fix(fbdev);


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "I/O resource request failed\n");
  return -ENXIO;
 }
 fbdev->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(fbdev->regs))
  return PTR_ERR(fbdev->regs);


 fbsize = fbdev->info.fix.smem_len;
 fbdev->fb_virt = dma_alloc_coherent(&pdev->dev, PAGE_ALIGN(fbsize),
         &fbdev->fb_phys, GFP_KERNEL);
 if (!fbdev->fb_virt) {
  dev_err(&pdev->dev,
   "Frame buffer memory allocation failed\n");
  return -ENOMEM;
 }
 fbdev->info.fix.smem_start = fbdev->fb_phys;
 fbdev->info.screen_base = fbdev->fb_virt;
 fbdev->info.pseudo_palette = fbdev->pseudo_palette;


 memset_io(fbdev->fb_virt, 0, fbsize);


 ocfb_setupfb(fbdev);

 if (fbdev->little_endian)
  fbdev->info.flags |= FBINFO_FOREIGN_ENDIAN;


 ret = fb_alloc_cmap(&fbdev->info.cmap, PALETTE_SIZE, 0);
 if (ret) {
  dev_err(&pdev->dev, "Color map allocation failed\n");
  goto err_dma_free;
 }


 ret = register_framebuffer(&fbdev->info);
 if (ret) {
  dev_err(&pdev->dev, "Framebuffer registration failed\n");
  goto err_dealloc_cmap;
 }

 return 0;

err_dealloc_cmap:
 fb_dealloc_cmap(&fbdev->info.cmap);

err_dma_free:
 dma_free_coherent(&pdev->dev, PAGE_ALIGN(fbsize), fbdev->fb_virt,
     fbdev->fb_phys);

 return ret;
}
