
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vesafb_par {int wc_cookie; } ;
struct fb_info {TYPE_1__* apertures; scalar_t__ screen_base; int cmap; struct vesafb_par* par; } ;
struct TYPE_4__ {int size; int base; } ;
struct TYPE_3__ {TYPE_2__* ranges; } ;


 int arch_phys_wc_del (int ) ;
 int fb_dealloc_cmap (int *) ;
 int iounmap (scalar_t__) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void vesafb_destroy(struct fb_info *info)
{
 struct vesafb_par *par = info->par;

 fb_dealloc_cmap(&info->cmap);
 arch_phys_wc_del(par->wc_cookie);
 if (info->screen_base)
  iounmap(info->screen_base);
 release_mem_region(info->apertures->ranges[0].base, info->apertures->ranges[0].size);
}
