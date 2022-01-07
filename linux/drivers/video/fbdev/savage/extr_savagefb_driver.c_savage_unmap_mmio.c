
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * vbase; } ;
struct savagefb_par {TYPE_1__ mmio; } ;
struct fb_info {struct savagefb_par* par; } ;


 int DBG (char*) ;
 int iounmap (int *) ;
 int savage_disable_mmio (struct savagefb_par*) ;

__attribute__((used)) static void savage_unmap_mmio(struct fb_info *info)
{
 struct savagefb_par *par = info->par;
 DBG("savage_unmap_mmio");

 savage_disable_mmio(par);

 if (par->mmio.vbase) {
  iounmap(par->mmio.vbase);
  par->mmio.vbase = ((void*)0);
 }
}
