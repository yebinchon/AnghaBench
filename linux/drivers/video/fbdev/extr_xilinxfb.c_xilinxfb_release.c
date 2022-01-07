
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int smem_len; } ;
struct TYPE_5__ {TYPE_1__ fix; int cmap; } ;
struct xilinxfb_drvdata {int flags; int dcr_len; int dcr_host; int fb_virt; int fb_phys; TYPE_2__ info; scalar_t__ fb_alloced; } ;
struct device {int dummy; } ;


 int BUS_ACCESS_FLAG ;
 int PAGE_ALIGN (int ) ;
 int REG_CTRL ;
 int VESA_POWERDOWN ;
 int dcr_unmap (int ,int ) ;
 struct xilinxfb_drvdata* dev_get_drvdata (struct device*) ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int fb_dealloc_cmap (int *) ;
 int iounmap (int ) ;
 int unregister_framebuffer (TYPE_2__*) ;
 int xilinx_fb_blank (int ,TYPE_2__*) ;
 int xilinx_fb_out32 (struct xilinxfb_drvdata*,int ,int ) ;

__attribute__((used)) static int xilinxfb_release(struct device *dev)
{
 struct xilinxfb_drvdata *drvdata = dev_get_drvdata(dev);





 unregister_framebuffer(&drvdata->info);

 fb_dealloc_cmap(&drvdata->info.cmap);

 if (drvdata->fb_alloced)
  dma_free_coherent(dev, PAGE_ALIGN(drvdata->info.fix.smem_len),
      drvdata->fb_virt, drvdata->fb_phys);
 else
  iounmap(drvdata->fb_virt);


 xilinx_fb_out32(drvdata, REG_CTRL, 0);







 return 0;
}
