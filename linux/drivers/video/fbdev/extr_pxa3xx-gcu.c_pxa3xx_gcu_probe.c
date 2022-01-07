
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {scalar_t__ start; } ;
struct TYPE_3__ {int * fops; int name; int minor; } ;
struct pxa3xx_gcu_priv {int clk; TYPE_1__ misc_dev; scalar_t__ shared_phys; int shared; struct device* dev; struct resource* resource_mem; int mmio_base; int spinlock; int wait_free; int wait_idle; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int MISCDEV_MINOR ;
 int PTR_ERR (int ) ;
 int SHARED_SIZE ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,void*,void*,int ,int) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct pxa3xx_gcu_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct pxa3xx_gcu_priv*) ;
 int dma_alloc_coherent (struct device*,int ,scalar_t__*,int ) ;
 int dma_free_coherent (struct device*,int ,int ,scalar_t__) ;
 int init_waitqueue_head (int *) ;
 int misc_deregister (TYPE_1__*) ;
 int misc_register (TYPE_1__*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pxa3xx_gcu_priv*) ;
 int pxa3xx_gcu_add_buffer (struct device*,struct pxa3xx_gcu_priv*) ;
 int pxa3xx_gcu_handle_irq ;
 int pxa3xx_gcu_init_debug_timer (struct pxa3xx_gcu_priv*) ;
 int pxa3xx_gcu_miscdev_fops ;
 int pxa3xx_gcu_reset (struct pxa3xx_gcu_priv*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int pxa3xx_gcu_probe(struct platform_device *pdev)
{
 int i, ret, irq;
 struct resource *r;
 struct pxa3xx_gcu_priv *priv;
 struct device *dev = &pdev->dev;

 priv = devm_kzalloc(dev, sizeof(struct pxa3xx_gcu_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 init_waitqueue_head(&priv->wait_idle);
 init_waitqueue_head(&priv->wait_free);
 spin_lock_init(&priv->spinlock);






 priv->misc_dev.minor = MISCDEV_MINOR,
 priv->misc_dev.name = DRV_NAME,
 priv->misc_dev.fops = &pxa3xx_gcu_miscdev_fops;


 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->mmio_base = devm_ioremap_resource(dev, r);
 if (IS_ERR(priv->mmio_base))
  return PTR_ERR(priv->mmio_base);


 priv->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(priv->clk)) {
  dev_err(dev, "failed to get clock\n");
  return PTR_ERR(priv->clk);
 }


 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_err(dev, "no IRQ defined: %d\n", irq);
  return irq;
 }

 ret = devm_request_irq(dev, irq, pxa3xx_gcu_handle_irq,
          0, DRV_NAME, priv);
 if (ret < 0) {
  dev_err(dev, "request_irq failed\n");
  return ret;
 }


 priv->shared = dma_alloc_coherent(dev, SHARED_SIZE,
       &priv->shared_phys, GFP_KERNEL);
 if (!priv->shared) {
  dev_err(dev, "failed to allocate DMA memory\n");
  return -ENOMEM;
 }


 ret = misc_register(&priv->misc_dev);
 if (ret < 0) {
  dev_err(dev, "misc_register() for minor %d failed\n",
   MISCDEV_MINOR);
  goto err_free_dma;
 }

 ret = clk_prepare_enable(priv->clk);
 if (ret < 0) {
  dev_err(dev, "failed to enable clock\n");
  goto err_misc_deregister;
 }

 for (i = 0; i < 8; i++) {
  ret = pxa3xx_gcu_add_buffer(dev, priv);
  if (ret) {
   dev_err(dev, "failed to allocate DMA memory\n");
   goto err_disable_clk;
  }
 }

 platform_set_drvdata(pdev, priv);
 priv->resource_mem = r;
 priv->dev = dev;
 pxa3xx_gcu_reset(priv);
 pxa3xx_gcu_init_debug_timer(priv);

 dev_info(dev, "registered @0x%p, DMA 0x%p (%d bytes), IRQ %d\n",
   (void *) r->start, (void *) priv->shared_phys,
   SHARED_SIZE, irq);
 return 0;

err_free_dma:
 dma_free_coherent(dev, SHARED_SIZE,
   priv->shared, priv->shared_phys);

err_misc_deregister:
 misc_deregister(&priv->misc_dev);

err_disable_clk:
 clk_disable_unprepare(priv->clk);

 return ret;
}
