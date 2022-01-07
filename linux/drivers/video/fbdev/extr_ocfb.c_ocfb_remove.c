
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int smem_len; } ;
struct TYPE_4__ {TYPE_1__ fix; int cmap; } ;
struct ocfb_dev {int fb_phys; int fb_virt; TYPE_2__ info; } ;


 int OCFB_CTRL ;
 int PAGE_ALIGN (int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int fb_dealloc_cmap (int *) ;
 int ocfb_writereg (struct ocfb_dev*,int ,int ) ;
 struct ocfb_dev* platform_get_drvdata (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,int *) ;
 int unregister_framebuffer (TYPE_2__*) ;

__attribute__((used)) static int ocfb_remove(struct platform_device *pdev)
{
 struct ocfb_dev *fbdev = platform_get_drvdata(pdev);

 unregister_framebuffer(&fbdev->info);
 fb_dealloc_cmap(&fbdev->info.cmap);
 dma_free_coherent(&pdev->dev, PAGE_ALIGN(fbdev->info.fix.smem_len),
     fbdev->fb_virt, fbdev->fb_phys);


 ocfb_writereg(fbdev, OCFB_CTRL, 0);

 platform_set_drvdata(pdev, ((void*)0));

 return 0;
}
