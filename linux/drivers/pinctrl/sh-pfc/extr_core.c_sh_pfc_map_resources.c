
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_pfc_window {int virt; int size; int phys; } ;
struct sh_pfc {unsigned int num_windows; unsigned int num_irqs; unsigned int* irqs; int dev; struct sh_pfc_window* windows; } ;
struct resource {int start; } ;
struct platform_device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int devm_ioremap_resource (int ,struct resource*) ;
 void* devm_kcalloc (int ,unsigned int,int,int ) ;
 void* platform_get_irq (struct platform_device*,unsigned int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,unsigned int) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int sh_pfc_map_resources(struct sh_pfc *pfc,
    struct platform_device *pdev)
{
 unsigned int num_windows, num_irqs;
 struct sh_pfc_window *windows;
 unsigned int *irqs = ((void*)0);
 struct resource *res;
 unsigned int i;
 int irq;


 for (num_windows = 0;; num_windows++) {
  res = platform_get_resource(pdev, IORESOURCE_MEM, num_windows);
  if (!res)
   break;
 }
 for (num_irqs = 0;; num_irqs++) {
  irq = platform_get_irq(pdev, num_irqs);
  if (irq == -EPROBE_DEFER)
   return irq;
  if (irq < 0)
   break;
 }

 if (num_windows == 0)
  return -EINVAL;


 windows = devm_kcalloc(pfc->dev, num_windows, sizeof(*windows),
          GFP_KERNEL);
 if (windows == ((void*)0))
  return -ENOMEM;

 pfc->num_windows = num_windows;
 pfc->windows = windows;

 if (num_irqs) {
  irqs = devm_kcalloc(pfc->dev, num_irqs, sizeof(*irqs),
        GFP_KERNEL);
  if (irqs == ((void*)0))
   return -ENOMEM;

  pfc->num_irqs = num_irqs;
  pfc->irqs = irqs;
 }


 for (i = 0; i < num_windows; i++) {
  res = platform_get_resource(pdev, IORESOURCE_MEM, i);
  windows->phys = res->start;
  windows->size = resource_size(res);
  windows->virt = devm_ioremap_resource(pfc->dev, res);
  if (IS_ERR(windows->virt))
   return -ENOMEM;
  windows++;
 }
 for (i = 0; i < num_irqs; i++)
  *irqs++ = platform_get_irq(pdev, i);

 return 0;
}
