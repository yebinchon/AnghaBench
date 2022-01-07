
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int notifier_call; } ;
struct TYPE_4__ {int var; } ;
struct sa1100fb_info {TYPE_3__ freq_transition; int map_dma; int map_cpu; int map_size; int dev; TYPE_1__ fb; int clk; int base; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int CPUFREQ_TRANSITION_NOTIFIER ;
 int EINVAL ;
 int ENOMEM ;
 int GPIOF_OUT_INIT_LOW ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SHANNON_GPIO_DISP_EN ;
 int cpufreq_register_notifier (TYPE_3__*,int ) ;
 int dev_err (int *,char*,...) ;
 int dev_get_platdata (int *) ;
 int devm_clk_get (int *,int *) ;
 int devm_gpio_request_one (int *,int ,int ,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct sa1100fb_info*) ;
 int dma_free_wc (int ,int ,int ,int ) ;
 scalar_t__ machine_is_shannon () ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sa1100fb_info*) ;
 int register_framebuffer (TYPE_1__*) ;
 int sa1100fb_check_var (int *,TYPE_1__*) ;
 int sa1100fb_freq_transition ;
 int sa1100fb_handle_irq ;
 struct sa1100fb_info* sa1100fb_init_fbinfo (int *) ;
 int sa1100fb_map_video_memory (struct sa1100fb_info*) ;

__attribute__((used)) static int sa1100fb_probe(struct platform_device *pdev)
{
 struct sa1100fb_info *fbi;
 struct resource *res;
 int ret, irq;

 if (!dev_get_platdata(&pdev->dev)) {
  dev_err(&pdev->dev, "no platform LCD data\n");
  return -EINVAL;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return -EINVAL;

 fbi = sa1100fb_init_fbinfo(&pdev->dev);
 if (!fbi)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 fbi->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(fbi->base))
  return PTR_ERR(fbi->base);

 fbi->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(fbi->clk))
  return PTR_ERR(fbi->clk);

 ret = devm_request_irq(&pdev->dev, irq, sa1100fb_handle_irq, 0,
          "LCD", fbi);
 if (ret) {
  dev_err(&pdev->dev, "request_irq failed: %d\n", ret);
  return ret;
 }

 if (machine_is_shannon()) {
  ret = devm_gpio_request_one(&pdev->dev, SHANNON_GPIO_DISP_EN,
   GPIOF_OUT_INIT_LOW, "display enable");
  if (ret)
   return ret;
 }


 ret = sa1100fb_map_video_memory(fbi);
 if (ret)
  return ret;





 sa1100fb_check_var(&fbi->fb.var, &fbi->fb);

 platform_set_drvdata(pdev, fbi);

 ret = register_framebuffer(&fbi->fb);
 if (ret < 0) {
  dma_free_wc(fbi->dev, fbi->map_size, fbi->map_cpu,
       fbi->map_dma);
  return ret;
 }







 return 0;
}
