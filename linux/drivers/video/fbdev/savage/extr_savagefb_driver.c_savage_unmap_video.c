
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vbase; int wc_cookie; } ;
struct savagefb_par {TYPE_1__ video; } ;
struct fb_info {int * screen_base; struct savagefb_par* par; } ;


 int DBG (char*) ;
 int arch_phys_wc_del (int ) ;
 int iounmap (int *) ;

__attribute__((used)) static void savage_unmap_video(struct fb_info *info)
{
 struct savagefb_par *par = info->par;

 DBG("savage_unmap_video");

 if (par->video.vbase) {
  arch_phys_wc_del(par->video.wc_cookie);
  iounmap(par->video.vbase);
  par->video.vbase = ((void*)0);
  info->screen_base = ((void*)0);
 }
}
