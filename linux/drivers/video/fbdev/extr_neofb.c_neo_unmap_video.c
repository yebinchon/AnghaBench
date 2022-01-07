
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neofb_par {int wc_cookie; } ;
struct TYPE_2__ {int smem_len; int smem_start; } ;
struct fb_info {TYPE_1__ fix; int * screen_base; struct neofb_par* par; } ;


 int DBG (char*) ;
 int arch_phys_wc_del (int ) ;
 int iounmap (int *) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void neo_unmap_video(struct fb_info *info)
{
 struct neofb_par *par = info->par;

 DBG("neo_unmap_video");

 arch_phys_wc_del(par->wc_cookie);
 iounmap(info->screen_base);
 info->screen_base = ((void*)0);

 release_mem_region(info->fix.smem_start,
      info->fix.smem_len);
}
