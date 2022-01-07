
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fb_info {int cmap; TYPE_2__* apertures; scalar_t__ screen_base; } ;
struct TYPE_4__ {TYPE_1__* ranges; } ;
struct TYPE_3__ {int size; int base; } ;


 int fb_dealloc_cmap (int *) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (scalar_t__) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void offb_destroy(struct fb_info *info)
{
 if (info->screen_base)
  iounmap(info->screen_base);
 release_mem_region(info->apertures->ranges[0].base, info->apertures->ranges[0].size);
 fb_dealloc_cmap(&info->cmap);
 framebuffer_release(info);
}
