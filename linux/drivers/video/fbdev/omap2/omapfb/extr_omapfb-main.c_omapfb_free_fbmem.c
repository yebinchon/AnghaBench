
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_info {scalar_t__ rotation_type; struct omapfb2_mem_region* region; struct omapfb2_device* fbdev; } ;
struct TYPE_2__ {int ** vaddr; } ;
struct omapfb2_mem_region {scalar_t__ size; scalar_t__ alloc; scalar_t__ paddr; int * vaddr; int * token; int attrs; int dma_handle; TYPE_1__ vrfb; int map_count; } ;
struct omapfb2_device {int dev; } ;
struct fb_info {int dummy; } ;


 struct omapfb_info* FB2OFB (struct fb_info*) ;
 scalar_t__ OMAP_DSS_ROT_VRFB ;
 int WARN_ON (int ) ;
 int atomic_read (int *) ;
 int dma_free_attrs (int ,scalar_t__,int *,int ,int ) ;
 int iounmap (int *) ;
 int omap_vrfb_release_ctx (TYPE_1__*) ;

__attribute__((used)) static void omapfb_free_fbmem(struct fb_info *fbi)
{
 struct omapfb_info *ofbi = FB2OFB(fbi);
 struct omapfb2_device *fbdev = ofbi->fbdev;
 struct omapfb2_mem_region *rg;

 rg = ofbi->region;

 if (rg->token == ((void*)0))
  return;

 WARN_ON(atomic_read(&rg->map_count));

 if (ofbi->rotation_type == OMAP_DSS_ROT_VRFB) {

  if (rg->vrfb.vaddr[0]) {
   iounmap(rg->vrfb.vaddr[0]);
   rg->vrfb.vaddr[0] = ((void*)0);
  }

  omap_vrfb_release_ctx(&rg->vrfb);
 }

 dma_free_attrs(fbdev->dev, rg->size, rg->token, rg->dma_handle,
   rg->attrs);

 rg->token = ((void*)0);
 rg->vaddr = ((void*)0);
 rg->paddr = 0;
 rg->alloc = 0;
 rg->size = 0;
}
