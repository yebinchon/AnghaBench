
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct zorro_device_id {int dummy; } ;
struct zorro_dev {scalar_t__ id; int dev; } ;
struct TYPE_2__ {int id; scalar_t__ smem_start; scalar_t__ mmio_start; } ;
struct fb_info {scalar_t__ screen_base; int cmap; int flags; TYPE_1__ fix; int * par; int * pseudo_palette; int var; int * fbops; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int FBINFO_DEFAULT ;
 int FM2FB_MODE_PAL ;
 scalar_t__ FRAMEMASTER_REG ;
 int FRAMEMASTER_SIZE ;
 scalar_t__ ZORRO_PROD_BSC_FRAMEMASTER_II ;
 scalar_t__ fb_alloc_cmap (int *,int,int ) ;
 int fb_dealloc_cmap (int *) ;
 TYPE_1__ fb_fix ;
 int fb_info (struct fb_info*,char*,int ) ;
 int * fb_var_modes ;
 int fm2fb_blank (int ,struct fb_info*) ;
 int fm2fb_mode ;
 int fm2fb_ops ;
 unsigned char* fm2fb_reg ;
 struct fb_info* framebuffer_alloc (int,int *) ;
 int framebuffer_release (struct fb_info*) ;
 scalar_t__ ioremap (scalar_t__,int ) ;
 int iounmap (scalar_t__) ;
 scalar_t__ register_framebuffer (struct fb_info*) ;
 int strcpy (int ,char*) ;
 int zorro_release_device (struct zorro_dev*) ;
 int zorro_request_device (struct zorro_dev*,char*) ;
 scalar_t__ zorro_resource_start (struct zorro_dev*) ;

__attribute__((used)) static int fm2fb_probe(struct zorro_dev *z, const struct zorro_device_id *id)
{
 struct fb_info *info;
 unsigned long *ptr;
 int is_fm;
 int x, y;

 is_fm = z->id == ZORRO_PROD_BSC_FRAMEMASTER_II;

 if (!zorro_request_device(z,"fm2fb"))
  return -ENXIO;

 info = framebuffer_alloc(16 * sizeof(u32), &z->dev);
 if (!info) {
  zorro_release_device(z);
  return -ENOMEM;
 }

 if (fb_alloc_cmap(&info->cmap, 256, 0) < 0) {
  framebuffer_release(info);
  zorro_release_device(z);
  return -ENOMEM;
 }


 fb_fix.smem_start = zorro_resource_start(z);
 info->screen_base = ioremap(fb_fix.smem_start, FRAMEMASTER_SIZE);
 fb_fix.mmio_start = fb_fix.smem_start + FRAMEMASTER_REG;
 fm2fb_reg = (unsigned char *)(info->screen_base+FRAMEMASTER_REG);

 strcpy(fb_fix.id, is_fm ? "FrameMaster II" : "Rainbow II");


 ptr = (unsigned long *)fb_fix.smem_start;
 for (y = 0; y < 576; y++) {
  for (x = 0; x < 96; x++) *ptr++ = 0xffffff;
  for (x = 0; x < 96; x++) *ptr++ = 0xffff00;
  for (x = 0; x < 96; x++) *ptr++ = 0x00ffff;
  for (x = 0; x < 96; x++) *ptr++ = 0x00ff00;
  for (x = 0; x < 96; x++) *ptr++ = 0xff00ff;
  for (x = 0; x < 96; x++) *ptr++ = 0xff0000;
  for (x = 0; x < 96; x++) *ptr++ = 0x0000ff;
  for (x = 0; x < 96; x++) *ptr++ = 0x000000;
 }
 fm2fb_blank(0, info);

 if (fm2fb_mode == -1)
  fm2fb_mode = FM2FB_MODE_PAL;

 info->fbops = &fm2fb_ops;
 info->var = fb_var_modes[fm2fb_mode];
 info->pseudo_palette = info->par;
 info->par = ((void*)0);
 info->fix = fb_fix;
 info->flags = FBINFO_DEFAULT;

 if (register_framebuffer(info) < 0) {
  fb_dealloc_cmap(&info->cmap);
  iounmap(info->screen_base);
  framebuffer_release(info);
  zorro_release_device(z);
  return -EINVAL;
 }
 fb_info(info, "%s frame buffer device\n", fb_fix.id);
 return 0;
}
