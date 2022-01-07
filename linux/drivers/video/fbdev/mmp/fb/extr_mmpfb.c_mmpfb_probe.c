
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {struct mmp_buffer_driver_mach_info* platform_data; } ;
struct platform_device {TYPE_5__ dev; } ;
struct mmpfb_info {int fb_size; TYPE_5__* dev; int access_ok; int fb_start_dma; int * fb_start; int overlay; TYPE_3__* path; int pix_fmt; int name; struct fb_info* fb_info; } ;
struct mmp_buffer_driver_mach_info {int dmafetch_id; int overlay_id; int path_name; int default_pixfmt; int name; } ;
struct TYPE_10__ {int id; } ;
struct TYPE_11__ {int yres_virtual; int yres; int xres_virtual; int bits_per_pixel; } ;
struct fb_info {TYPE_1__ fix; int node; TYPE_2__ var; struct mmpfb_info* par; } ;
struct TYPE_12__ {int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int MMPFB_DEFAULT_SIZE ;
 int PAGE_ALIGN (int) ;
 int dev_err (TYPE_5__*,char*,...) ;
 int dev_info (TYPE_5__*,char*,int,...) ;
 int * dma_alloc_coherent (TYPE_5__*,int ,int *,int ) ;
 int dma_free_coherent (TYPE_5__*,int ,int *,int ) ;
 int fb_info_clear (struct fb_info*) ;
 int fb_info_setup (struct fb_info*,struct mmpfb_info*) ;
 int fb_prepare_logo (struct fb_info*,int ) ;
 int fb_show_logo (struct fb_info*,int ) ;
 struct fb_info* framebuffer_alloc (int,TYPE_5__*) ;
 int framebuffer_release (struct fb_info*) ;
 TYPE_3__* mmp_get_path (int ) ;
 int mmp_overlay_set_fetch (int ,int ) ;
 int mmp_path_get_overlay (TYPE_3__*,int ) ;
 int mmpfb_power (struct mmpfb_info*,int) ;
 int modes_setup (struct mmpfb_info*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int pixfmt_to_var (TYPE_2__*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mmpfb_info*) ;
 int register_framebuffer (struct fb_info*) ;

__attribute__((used)) static int mmpfb_probe(struct platform_device *pdev)
{
 struct mmp_buffer_driver_mach_info *mi;
 struct fb_info *info;
 struct mmpfb_info *fbi;
 int ret, modes_num;

 mi = pdev->dev.platform_data;
 if (mi == ((void*)0)) {
  dev_err(&pdev->dev, "no platform data defined\n");
  return -EINVAL;
 }


 info = framebuffer_alloc(sizeof(struct mmpfb_info), &pdev->dev);
 if (info == ((void*)0))
  return -ENOMEM;
 fbi = info->par;


 fbi->fb_info = info;
 platform_set_drvdata(pdev, fbi);
 fbi->dev = &pdev->dev;
 fbi->name = mi->name;
 fbi->pix_fmt = mi->default_pixfmt;
 pixfmt_to_var(&info->var, fbi->pix_fmt);
 mutex_init(&fbi->access_ok);


 fbi->path = mmp_get_path(mi->path_name);
 if (!fbi->path) {
  dev_err(&pdev->dev, "can't get the path %s\n", mi->path_name);
  ret = -EINVAL;
  goto failed_destroy_mutex;
 }

 dev_info(fbi->dev, "path %s get\n", fbi->path->name);


 fbi->overlay = mmp_path_get_overlay(fbi->path, mi->overlay_id);
 if (!fbi->overlay) {
  ret = -EINVAL;
  goto failed_destroy_mutex;
 }

 mmp_overlay_set_fetch(fbi->overlay, mi->dmafetch_id);

 modes_num = modes_setup(fbi);
 if (modes_num < 0) {
  ret = modes_num;
  goto failed_destroy_mutex;
 }





 if (modes_num > 0) {

  info->var.yres_virtual = info->var.yres * 2;


  fbi->fb_size = info->var.xres_virtual * info->var.yres_virtual
    * info->var.bits_per_pixel / 8;
 } else {
  fbi->fb_size = MMPFB_DEFAULT_SIZE;
 }

 fbi->fb_start = dma_alloc_coherent(&pdev->dev, PAGE_ALIGN(fbi->fb_size),
    &fbi->fb_start_dma, GFP_KERNEL);
 if (fbi->fb_start == ((void*)0)) {
  dev_err(&pdev->dev, "can't alloc framebuffer\n");
  ret = -ENOMEM;
  goto failed_destroy_mutex;
 }
 dev_info(fbi->dev, "fb %dk allocated\n", fbi->fb_size/1024);


 if (modes_num > 0)
  mmpfb_power(fbi, 1);

 ret = fb_info_setup(info, fbi);
 if (ret < 0)
  goto failed_free_buff;

 ret = register_framebuffer(info);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to register fb: %d\n", ret);
  ret = -ENXIO;
  goto failed_clear_info;
 }

 dev_info(fbi->dev, "loaded to /dev/fb%d <%s>.\n",
  info->node, info->fix.id);
 return 0;

failed_clear_info:
 fb_info_clear(info);
failed_free_buff:
 dma_free_coherent(&pdev->dev, PAGE_ALIGN(fbi->fb_size), fbi->fb_start,
  fbi->fb_start_dma);
failed_destroy_mutex:
 mutex_destroy(&fbi->access_ok);
 dev_err(fbi->dev, "mmp-fb: frame buffer device init failed\n");

 framebuffer_release(info);

 return ret;
}
