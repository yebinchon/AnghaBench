
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sh_mobile_lcdc_priv {int irq; struct sh_mobile_lcdc_overlay* overlays; struct sh_mobile_lcdc_chan* ch; int base; int forced_fourcc; int hw_usecnt; TYPE_2__* dev; } ;
struct sh_mobile_lcdc_overlay {struct sh_mobile_lcdc_chan* channel; struct sh_mobile_lcdc_chan* cfg; } ;
struct sh_mobile_lcdc_info {struct sh_mobile_lcdc_chan* overlays; int clock_source; struct sh_mobile_lcdc_chan* ch; } ;
struct TYPE_6__ {scalar_t__ max_brightness; } ;
struct sh_mobile_lcdc_chan {int chan; int fourcc; int reg_offs; int enabled; int bl; TYPE_1__ bl_info; struct sh_mobile_lcdc_chan* cfg; int vsync_completion; int frame_end_wait; struct sh_mobile_lcdc_priv* lcdc; int open_lock; } ;
struct resource {int start; } ;
struct TYPE_7__ {struct sh_mobile_lcdc_info* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;


 int ARRAY_SIZE (struct sh_mobile_lcdc_chan*) ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;


 int LDCNT2R_ME ;
 int LDCNT2R_SE ;
 int atomic_set (int *,int) ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_name (TYPE_2__*) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int ioremap_nocache (int ,int ) ;
 struct sh_mobile_lcdc_priv* kzalloc (int,int ) ;
 int lcdc_offs_mainlcd ;
 int lcdc_offs_sublcd ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sh_mobile_lcdc_priv*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int request_irq (int,int ,int ,int ,struct sh_mobile_lcdc_priv*) ;
 int resource_size (struct resource*) ;
 int sh_mobile_lcdc_bl_probe (TYPE_2__*,struct sh_mobile_lcdc_chan*) ;
 int sh_mobile_lcdc_channel_fb_register (struct sh_mobile_lcdc_chan*) ;
 int sh_mobile_lcdc_channel_init (struct sh_mobile_lcdc_chan*) ;
 int sh_mobile_lcdc_check_interface (struct sh_mobile_lcdc_chan*) ;
 int sh_mobile_lcdc_irq ;
 int sh_mobile_lcdc_overlay_fb_register (struct sh_mobile_lcdc_overlay*) ;
 int sh_mobile_lcdc_overlay_init (struct sh_mobile_lcdc_overlay*) ;
 int sh_mobile_lcdc_remove (struct platform_device*) ;
 int sh_mobile_lcdc_setup_clocks (struct sh_mobile_lcdc_priv*,int ) ;
 int sh_mobile_lcdc_start (struct sh_mobile_lcdc_priv*) ;

__attribute__((used)) static int sh_mobile_lcdc_probe(struct platform_device *pdev)
{
 struct sh_mobile_lcdc_info *pdata = pdev->dev.platform_data;
 struct sh_mobile_lcdc_priv *priv;
 struct resource *res;
 int num_channels;
 int error;
 int irq, i;

 if (!pdata) {
  dev_err(&pdev->dev, "no platform data defined\n");
  return -EINVAL;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 irq = platform_get_irq(pdev, 0);
 if (!res || irq < 0) {
  dev_err(&pdev->dev, "cannot get platform resources\n");
  return -ENOENT;
 }

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->dev = &pdev->dev;

 for (i = 0; i < ARRAY_SIZE(priv->ch); i++)
  mutex_init(&priv->ch[i].open_lock);
 platform_set_drvdata(pdev, priv);

 error = request_irq(irq, sh_mobile_lcdc_irq, 0,
       dev_name(&pdev->dev), priv);
 if (error) {
  dev_err(&pdev->dev, "unable to request irq\n");
  goto err1;
 }

 priv->irq = irq;
 atomic_set(&priv->hw_usecnt, -1);

 for (i = 0, num_channels = 0; i < ARRAY_SIZE(pdata->ch); i++) {
  struct sh_mobile_lcdc_chan *ch = priv->ch + num_channels;

  ch->lcdc = priv;
  ch->cfg = &pdata->ch[i];

  error = sh_mobile_lcdc_check_interface(ch);
  if (error) {
   dev_err(&pdev->dev, "unsupported interface type\n");
   goto err1;
  }
  init_waitqueue_head(&ch->frame_end_wait);
  init_completion(&ch->vsync_completion);


  if (ch->cfg->bl_info.max_brightness)
   ch->bl = sh_mobile_lcdc_bl_probe(&pdev->dev, ch);

  switch (pdata->ch[i].chan) {
  case 129:
   ch->enabled = LDCNT2R_ME;
   ch->reg_offs = lcdc_offs_mainlcd;
   num_channels++;
   break;
  case 128:
   ch->enabled = LDCNT2R_SE;
   ch->reg_offs = lcdc_offs_sublcd;
   num_channels++;
   break;
  }
 }

 if (!num_channels) {
  dev_err(&pdev->dev, "no channels defined\n");
  error = -EINVAL;
  goto err1;
 }


 if (num_channels == 2)
  priv->forced_fourcc = pdata->ch[0].fourcc;

 priv->base = ioremap_nocache(res->start, resource_size(res));
 if (!priv->base) {
  error = -ENOMEM;
  goto err1;
 }

 error = sh_mobile_lcdc_setup_clocks(priv, pdata->clock_source);
 if (error) {
  dev_err(&pdev->dev, "unable to setup clocks\n");
  goto err1;
 }


 pm_runtime_enable(&pdev->dev);

 for (i = 0; i < num_channels; i++) {
  struct sh_mobile_lcdc_chan *ch = &priv->ch[i];

  error = sh_mobile_lcdc_channel_init(ch);
  if (error)
   goto err1;
 }

 for (i = 0; i < ARRAY_SIZE(pdata->overlays); i++) {
  struct sh_mobile_lcdc_overlay *ovl = &priv->overlays[i];

  ovl->cfg = &pdata->overlays[i];
  ovl->channel = &priv->ch[0];

  error = sh_mobile_lcdc_overlay_init(ovl);
  if (error)
   goto err1;
 }

 error = sh_mobile_lcdc_start(priv);
 if (error) {
  dev_err(&pdev->dev, "unable to start hardware\n");
  goto err1;
 }

 for (i = 0; i < num_channels; i++) {
  struct sh_mobile_lcdc_chan *ch = priv->ch + i;

  error = sh_mobile_lcdc_channel_fb_register(ch);
  if (error)
   goto err1;
 }

 for (i = 0; i < ARRAY_SIZE(pdata->overlays); i++) {
  struct sh_mobile_lcdc_overlay *ovl = &priv->overlays[i];

  error = sh_mobile_lcdc_overlay_fb_register(ovl);
  if (error)
   goto err1;
 }

 return 0;
err1:
 sh_mobile_lcdc_remove(pdev);

 return error;
}
