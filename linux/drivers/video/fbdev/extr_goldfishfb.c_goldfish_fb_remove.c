
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_4__ {int smem_start; } ;
struct TYPE_5__ {int xres_virtual; int yres_virtual; } ;
struct TYPE_6__ {TYPE_1__ fix; scalar_t__ screen_base; TYPE_2__ var; } ;
struct goldfish_fb {int reg_base; TYPE_3__ fb; int irq; } ;


 int dma_free_coherent (int *,size_t,void*,int ) ;
 int free_irq (int ,struct goldfish_fb*) ;
 int iounmap (int ) ;
 int kfree (struct goldfish_fb*) ;
 struct goldfish_fb* platform_get_drvdata (struct platform_device*) ;
 int unregister_framebuffer (TYPE_3__*) ;

__attribute__((used)) static int goldfish_fb_remove(struct platform_device *pdev)
{
 size_t framesize;
 struct goldfish_fb *fb = platform_get_drvdata(pdev);

 framesize = fb->fb.var.xres_virtual * fb->fb.var.yres_virtual * 2;
 unregister_framebuffer(&fb->fb);
 free_irq(fb->irq, fb);

 dma_free_coherent(&pdev->dev, framesize, (void *)fb->fb.screen_base,
      fb->fb.fix.smem_start);
 iounmap(fb->reg_base);
 kfree(fb);
 return 0;
}
