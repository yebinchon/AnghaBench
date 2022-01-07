
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fb_info {int cmap; TYPE_2__* apertures; scalar_t__ screen_base; } ;
struct TYPE_4__ {TYPE_1__* ranges; } ;
struct TYPE_3__ {int size; int base; } ;


 int EFI_MEMORY_UC ;
 int EFI_MEMORY_WC ;
 int fb_dealloc_cmap (int *) ;
 int iounmap (scalar_t__) ;
 int mem_flags ;
 int memunmap (scalar_t__) ;
 int release_mem_region (int ,int ) ;
 scalar_t__ request_mem_succeeded ;

__attribute__((used)) static void efifb_destroy(struct fb_info *info)
{
 if (info->screen_base) {
  if (mem_flags & (EFI_MEMORY_UC | EFI_MEMORY_WC))
   iounmap(info->screen_base);
  else
   memunmap(info->screen_base);
 }
 if (request_mem_succeeded)
  release_mem_region(info->apertures->ranges[0].base,
       info->apertures->ranges[0].size);
 fb_dealloc_cmap(&info->cmap);
}
