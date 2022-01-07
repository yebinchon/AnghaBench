
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct sh_mobile_lcdc_overlay {int fb_size; int dma_handle; int fb_mem; TYPE_2__* channel; } ;
struct fb_info {struct sh_mobile_lcdc_overlay* par; } ;
struct TYPE_4__ {TYPE_1__* lcdc; } ;
struct TYPE_3__ {int dev; } ;


 int dma_mmap_coherent (int ,struct vm_area_struct*,int ,int ,int ) ;

__attribute__((used)) static int
sh_mobile_lcdc_overlay_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 struct sh_mobile_lcdc_overlay *ovl = info->par;

 return dma_mmap_coherent(ovl->channel->lcdc->dev, vma, ovl->fb_mem,
     ovl->dma_handle, ovl->fb_size);
}
