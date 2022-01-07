
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ufx_data {int dummy; } ;
struct TYPE_4__ {int smem_len; int line_length; unsigned long smem_start; } ;
struct TYPE_3__ {int yres; } ;
struct fb_info {unsigned char* screen_base; int flags; TYPE_2__ fix; TYPE_1__ var; } ;


 int ENOMEM ;
 int PAGE_ALIGN (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int pr_debug (char*) ;
 int smscufx_info_flags ;
 int vfree (unsigned char*) ;
 unsigned char* vmalloc (int) ;

__attribute__((used)) static int ufx_realloc_framebuffer(struct ufx_data *dev, struct fb_info *info)
{
 int old_len = info->fix.smem_len;
 int new_len;
 unsigned char *old_fb = info->screen_base;
 unsigned char *new_fb;

 pr_debug("Reallocating framebuffer. Addresses will change!");

 new_len = info->fix.line_length * info->var.yres;

 if (PAGE_ALIGN(new_len) > old_len) {



  new_fb = vmalloc(new_len);
  if (!new_fb)
   return -ENOMEM;

  if (info->screen_base) {
   memcpy(new_fb, old_fb, old_len);
   vfree(info->screen_base);
  }

  info->screen_base = new_fb;
  info->fix.smem_len = PAGE_ALIGN(new_len);
  info->fix.smem_start = (unsigned long) new_fb;
  info->flags = smscufx_info_flags;
 }
 return 0;
}
