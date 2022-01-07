
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sh_mobile_lcdc_priv {scalar_t__ irq; scalar_t__ base; scalar_t__ dot_clk; struct sh_mobile_lcdc_overlay* ch; struct sh_mobile_lcdc_overlay* overlays; } ;
struct sh_mobile_lcdc_overlay {int open_lock; scalar_t__ bl; int dma_handle; scalar_t__ fb_mem; int fb_size; TYPE_5__* cfg; TYPE_1__* tx_dev; } ;
struct sh_mobile_lcdc_chan {int open_lock; scalar_t__ bl; int dma_handle; scalar_t__ fb_mem; int fb_size; TYPE_5__* cfg; TYPE_1__* tx_dev; } ;
struct platform_device {int dev; } ;
struct TYPE_10__ {TYPE_4__* tx_dev; } ;
struct TYPE_8__ {TYPE_2__* driver; } ;
struct TYPE_9__ {TYPE_3__ dev; } ;
struct TYPE_7__ {int owner; } ;
struct TYPE_6__ {int * lcdc; } ;


 unsigned int ARRAY_SIZE (struct sh_mobile_lcdc_overlay*) ;
 int clk_put (scalar_t__) ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int free_irq (scalar_t__,struct sh_mobile_lcdc_priv*) ;
 int iounmap (scalar_t__) ;
 int kfree (struct sh_mobile_lcdc_priv*) ;
 int module_put (int ) ;
 int mutex_destroy (int *) ;
 struct sh_mobile_lcdc_priv* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int sh_mobile_lcdc_bl_remove (scalar_t__) ;
 int sh_mobile_lcdc_channel_fb_cleanup (struct sh_mobile_lcdc_overlay*) ;
 int sh_mobile_lcdc_channel_fb_unregister (struct sh_mobile_lcdc_overlay*) ;
 int sh_mobile_lcdc_overlay_fb_cleanup (struct sh_mobile_lcdc_overlay*) ;
 int sh_mobile_lcdc_overlay_fb_unregister (struct sh_mobile_lcdc_overlay*) ;
 int sh_mobile_lcdc_stop (struct sh_mobile_lcdc_priv*) ;

__attribute__((used)) static int sh_mobile_lcdc_remove(struct platform_device *pdev)
{
 struct sh_mobile_lcdc_priv *priv = platform_get_drvdata(pdev);
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(priv->overlays); i++)
  sh_mobile_lcdc_overlay_fb_unregister(&priv->overlays[i]);
 for (i = 0; i < ARRAY_SIZE(priv->ch); i++)
  sh_mobile_lcdc_channel_fb_unregister(&priv->ch[i]);

 sh_mobile_lcdc_stop(priv);

 for (i = 0; i < ARRAY_SIZE(priv->overlays); i++) {
  struct sh_mobile_lcdc_overlay *ovl = &priv->overlays[i];

  sh_mobile_lcdc_overlay_fb_cleanup(ovl);

  if (ovl->fb_mem)
   dma_free_coherent(&pdev->dev, ovl->fb_size,
       ovl->fb_mem, ovl->dma_handle);
 }

 for (i = 0; i < ARRAY_SIZE(priv->ch); i++) {
  struct sh_mobile_lcdc_chan *ch = &priv->ch[i];

  if (ch->tx_dev) {
   ch->tx_dev->lcdc = ((void*)0);
   module_put(ch->cfg->tx_dev->dev.driver->owner);
  }

  sh_mobile_lcdc_channel_fb_cleanup(ch);

  if (ch->fb_mem)
   dma_free_coherent(&pdev->dev, ch->fb_size,
       ch->fb_mem, ch->dma_handle);
 }

 for (i = 0; i < ARRAY_SIZE(priv->ch); i++) {
  struct sh_mobile_lcdc_chan *ch = &priv->ch[i];

  if (ch->bl)
   sh_mobile_lcdc_bl_remove(ch->bl);
  mutex_destroy(&ch->open_lock);
 }

 if (priv->dot_clk) {
  pm_runtime_disable(&pdev->dev);
  clk_put(priv->dot_clk);
 }

 if (priv->base)
  iounmap(priv->base);

 if (priv->irq)
  free_irq(priv->irq, priv);
 kfree(priv);
 return 0;
}
