
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int start; } ;
struct dio_dev {scalar_t__ scode; TYPE_2__ resource; } ;
struct TYPE_4__ {void* screen_base; int cmap; } ;


 scalar_t__ DIOII_SCBASE ;
 int fb_dealloc_cmap (int *) ;
 TYPE_1__ fb_info ;
 scalar_t__ fb_regs ;
 int iounmap (void*) ;
 int release_mem_region (int ,int ) ;
 int resource_size (TYPE_2__*) ;
 int unregister_framebuffer (TYPE_1__*) ;

__attribute__((used)) static void hpfb_remove_one(struct dio_dev *d)
{
 unregister_framebuffer(&fb_info);
 if (d->scode >= DIOII_SCBASE)
  iounmap((void *)fb_regs);
 release_mem_region(d->resource.start, resource_size(&d->resource));
 fb_dealloc_cmap(&fb_info.cmap);
 if (fb_info.screen_base)
  iounmap(fb_info.screen_base);
}
