
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct sh_mobile_lcdc_chan {int fb_size; int dma_handle; int fb_mem; TYPE_1__* lcdc; } ;
struct fb_info {struct sh_mobile_lcdc_chan* par; } ;
struct TYPE_2__ {int dev; } ;


 int dma_mmap_coherent (int ,struct vm_area_struct*,int ,int ,int ) ;

__attribute__((used)) static int
sh_mobile_lcdc_mmap(struct fb_info *info, struct vm_area_struct *vma)
{
 struct sh_mobile_lcdc_chan *ch = info->par;

 return dma_mmap_coherent(ch->lcdc->dev, vma, ch->fb_mem,
     ch->dma_handle, ch->fb_size);
}
