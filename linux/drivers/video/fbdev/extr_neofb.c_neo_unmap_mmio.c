
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neofb_par {int * mmio_vbase; } ;
struct TYPE_2__ {int mmio_len; int mmio_start; } ;
struct fb_info {TYPE_1__ fix; struct neofb_par* par; } ;


 int DBG (char*) ;
 int iounmap (int *) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void neo_unmap_mmio(struct fb_info *info)
{
 struct neofb_par *par = info->par;

 DBG("neo_unmap_mmio");

 iounmap(par->mmio_vbase);
 par->mmio_vbase = ((void*)0);

 release_mem_region(info->fix.mmio_start,
      info->fix.mmio_len);
}
