
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* coherent_dma_mask; void** dma_mask; struct iss_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct iss_platform_data {int dummy; } ;
struct iss_device {int irq_num; int iss_mutex; int crashed; int media_dev; TYPE_1__* dev; int revision; int syscon; void* raw_dmamask; struct iss_platform_data* pdata; } ;


 int BTE_CTRL ;
 int BTE_CTRL_BW_LIMITER_MASK ;
 int BTE_CTRL_BW_LIMITER_SHIFT ;
 void* DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 int ISP5_REVISION ;
 int ISS_HL_REVISION ;
 scalar_t__ IS_ERR (int ) ;
 int OMAP4_ISS_MEM_BTE ;
 unsigned int OMAP4_ISS_MEM_ISP_SYS1 ;
 unsigned int OMAP4_ISS_MEM_LAST ;
 unsigned int OMAP4_ISS_MEM_TOP ;
 int OMAP4_ISS_SUBCLK_ISP ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*,int ) ;
 struct iss_device* devm_kzalloc (TYPE_1__*,int,int ) ;
 scalar_t__ devm_request_irq (TYPE_1__*,int,int ,int ,char*,struct iss_device*) ;
 int iss_cleanup_modules (struct iss_device*) ;
 int iss_create_links (struct iss_device*) ;
 int iss_get_clocks (struct iss_device*) ;
 int iss_initialize_modules (struct iss_device*) ;
 int iss_isp_reset (struct iss_device*) ;
 int iss_isr ;
 int iss_map_mem_resource (struct platform_device*,struct iss_device*,unsigned int) ;
 int iss_reg_read (struct iss_device*,unsigned int,int ) ;
 int iss_reg_update (struct iss_device*,int ,int ,int ,int) ;
 int iss_register_entities (struct iss_device*) ;
 int iss_reset (struct iss_device*) ;
 int iss_unregister_entities (struct iss_device*) ;
 int media_entity_enum_cleanup (int *) ;
 int media_entity_enum_init (int *,int *) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int omap4iss_get (struct iss_device*) ;
 int omap4iss_put (struct iss_device*) ;
 int omap4iss_subclk_enable (struct iss_device*,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iss_device*) ;
 int syscon_regmap_lookup_by_compatible (char*) ;

__attribute__((used)) static int iss_probe(struct platform_device *pdev)
{
 struct iss_platform_data *pdata = pdev->dev.platform_data;
 struct iss_device *iss;
 unsigned int i;
 int ret;

 if (!pdata)
  return -EINVAL;

 iss = devm_kzalloc(&pdev->dev, sizeof(*iss), GFP_KERNEL);
 if (!iss)
  return -ENOMEM;

 mutex_init(&iss->iss_mutex);

 iss->dev = &pdev->dev;
 iss->pdata = pdata;

 iss->raw_dmamask = DMA_BIT_MASK(32);
 iss->dev->dma_mask = &iss->raw_dmamask;
 iss->dev->coherent_dma_mask = DMA_BIT_MASK(32);

 platform_set_drvdata(pdev, iss);





 iss->syscon = syscon_regmap_lookup_by_compatible("syscon");
 if (IS_ERR(iss->syscon)) {
  ret = PTR_ERR(iss->syscon);
  goto error;
 }


 ret = iss_map_mem_resource(pdev, iss, OMAP4_ISS_MEM_TOP);
 if (ret < 0)
  goto error;

 ret = iss_get_clocks(iss);
 if (ret < 0)
  goto error;

 if (!omap4iss_get(iss))
  goto error;

 ret = iss_reset(iss);
 if (ret < 0)
  goto error_iss;

 iss->revision = iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_REVISION);
 dev_info(iss->dev, "Revision %08x found\n", iss->revision);

 for (i = 1; i < OMAP4_ISS_MEM_LAST; i++) {
  ret = iss_map_mem_resource(pdev, iss, i);
  if (ret)
   goto error_iss;
 }


 iss_reg_update(iss, OMAP4_ISS_MEM_BTE, BTE_CTRL,
         BTE_CTRL_BW_LIMITER_MASK,
         18 << BTE_CTRL_BW_LIMITER_SHIFT);


 ret = omap4iss_subclk_enable(iss, OMAP4_ISS_SUBCLK_ISP);
 if (ret < 0)
  goto error_iss;

 ret = iss_isp_reset(iss);
 if (ret < 0)
  goto error_iss;

 dev_info(iss->dev, "ISP Revision %08x found\n",
   iss_reg_read(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_REVISION));


 ret = platform_get_irq(pdev, 0);
 if (ret <= 0) {
  ret = -ENODEV;
  goto error_iss;
 }
 iss->irq_num = ret;

 if (devm_request_irq(iss->dev, iss->irq_num, iss_isr, IRQF_SHARED,
        "OMAP4 ISS", iss)) {
  dev_err(iss->dev, "Unable to request IRQ\n");
  ret = -EINVAL;
  goto error_iss;
 }


 ret = iss_initialize_modules(iss);
 if (ret < 0)
  goto error_iss;

 ret = iss_register_entities(iss);
 if (ret < 0)
  goto error_modules;

 ret = media_entity_enum_init(&iss->crashed, &iss->media_dev);
 if (ret)
  goto error_entities;

 ret = iss_create_links(iss);
 if (ret < 0)
  goto error_entities;

 omap4iss_put(iss);

 return 0;

error_entities:
 iss_unregister_entities(iss);
 media_entity_enum_cleanup(&iss->crashed);
error_modules:
 iss_cleanup_modules(iss);
error_iss:
 omap4iss_put(iss);
error:
 mutex_destroy(&iss->iss_mutex);

 return ret;
}
