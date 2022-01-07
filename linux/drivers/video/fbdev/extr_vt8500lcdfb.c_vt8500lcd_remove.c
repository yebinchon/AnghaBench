
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {TYPE_2__ cmap; } ;
struct vt8500lcd_info {int regbase; int palette_phys; int palette_cpu; int palette_size; TYPE_1__ fb; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;


 int IORESOURCE_MEM ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int fb_dealloc_cmap (TYPE_2__*) ;
 int free_irq (int,struct vt8500lcd_info*) ;
 int iounmap (int ) ;
 struct vt8500lcd_info* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int unregister_framebuffer (TYPE_1__*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int vt8500lcd_remove(struct platform_device *pdev)
{
 struct vt8500lcd_info *fbi = platform_get_drvdata(pdev);
 struct resource *res;
 int irq;

 unregister_framebuffer(&fbi->fb);

 writel(0, fbi->regbase);

 if (fbi->fb.cmap.len)
  fb_dealloc_cmap(&fbi->fb.cmap);

 irq = platform_get_irq(pdev, 0);
 free_irq(irq, fbi);

 dma_free_coherent(&pdev->dev, fbi->palette_size,
     fbi->palette_cpu, fbi->palette_phys);

 iounmap(fbi->regbase);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(res->start, resource_size(res));

 return 0;
}
