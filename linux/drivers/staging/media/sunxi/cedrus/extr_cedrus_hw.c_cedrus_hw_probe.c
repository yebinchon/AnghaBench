
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct resource {int dummy; } ;
struct cedrus_variant {int quirks; int mod_rate; int capabilities; } ;
struct cedrus_dev {TYPE_1__* dev; void* ahb_clk; void* mod_clk; void* ram_clk; void* rstc; void* base; int pdev; int capabilities; } ;
struct TYPE_12__ {int dma_pfn_offset; } ;


 int CEDRUS_QUIRK_NO_DMA_OFFSET ;
 int EINVAL ;
 int ENODEV ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PHYS_PFN_OFFSET ;
 int PTR_ERR (void*) ;
 int cedrus_irq ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int clk_set_rate (void*,int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_name (TYPE_1__*) ;
 void* devm_clk_get (TYPE_1__*,char*) ;
 void* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 int devm_request_irq (TYPE_1__*,int,int ,int ,int ,struct cedrus_dev*) ;
 void* devm_reset_control_get (TYPE_1__*,int *) ;
 struct cedrus_variant* of_device_get_match_data (TYPE_1__*) ;
 int of_reserved_mem_device_init (TYPE_1__*) ;
 int of_reserved_mem_device_release (TYPE_1__*) ;
 int platform_get_irq (int ,int ) ;
 struct resource* platform_get_resource (int ,int ,int ) ;
 int reset_control_reset (void*) ;
 int sunxi_sram_claim (TYPE_1__*) ;
 int sunxi_sram_release (TYPE_1__*) ;

int cedrus_hw_probe(struct cedrus_dev *dev)
{
 const struct cedrus_variant *variant;
 struct resource *res;
 int irq_dec;
 int ret;

 variant = of_device_get_match_data(dev->dev);
 if (!variant)
  return -EINVAL;

 dev->capabilities = variant->capabilities;

 irq_dec = platform_get_irq(dev->pdev, 0);
 if (irq_dec <= 0)
  return irq_dec;
 ret = devm_request_irq(dev->dev, irq_dec, cedrus_irq,
          0, dev_name(dev->dev), dev);
 if (ret) {
  dev_err(dev->dev, "Failed to request IRQ\n");

  return ret;
 }
 ret = of_reserved_mem_device_init(dev->dev);
 if (ret && ret != -ENODEV) {
  dev_err(dev->dev, "Failed to reserve memory\n");

  return ret;
 }

 ret = sunxi_sram_claim(dev->dev);
 if (ret) {
  dev_err(dev->dev, "Failed to claim SRAM\n");

  goto err_mem;
 }

 dev->ahb_clk = devm_clk_get(dev->dev, "ahb");
 if (IS_ERR(dev->ahb_clk)) {
  dev_err(dev->dev, "Failed to get AHB clock\n");

  ret = PTR_ERR(dev->ahb_clk);
  goto err_sram;
 }

 dev->mod_clk = devm_clk_get(dev->dev, "mod");
 if (IS_ERR(dev->mod_clk)) {
  dev_err(dev->dev, "Failed to get MOD clock\n");

  ret = PTR_ERR(dev->mod_clk);
  goto err_sram;
 }

 dev->ram_clk = devm_clk_get(dev->dev, "ram");
 if (IS_ERR(dev->ram_clk)) {
  dev_err(dev->dev, "Failed to get RAM clock\n");

  ret = PTR_ERR(dev->ram_clk);
  goto err_sram;
 }

 dev->rstc = devm_reset_control_get(dev->dev, ((void*)0));
 if (IS_ERR(dev->rstc)) {
  dev_err(dev->dev, "Failed to get reset control\n");

  ret = PTR_ERR(dev->rstc);
  goto err_sram;
 }

 res = platform_get_resource(dev->pdev, IORESOURCE_MEM, 0);
 dev->base = devm_ioremap_resource(dev->dev, res);
 if (IS_ERR(dev->base)) {
  dev_err(dev->dev, "Failed to map registers\n");

  ret = PTR_ERR(dev->base);
  goto err_sram;
 }

 ret = clk_set_rate(dev->mod_clk, variant->mod_rate);
 if (ret) {
  dev_err(dev->dev, "Failed to set clock rate\n");

  goto err_sram;
 }

 ret = clk_prepare_enable(dev->ahb_clk);
 if (ret) {
  dev_err(dev->dev, "Failed to enable AHB clock\n");

  goto err_sram;
 }

 ret = clk_prepare_enable(dev->mod_clk);
 if (ret) {
  dev_err(dev->dev, "Failed to enable MOD clock\n");

  goto err_ahb_clk;
 }

 ret = clk_prepare_enable(dev->ram_clk);
 if (ret) {
  dev_err(dev->dev, "Failed to enable RAM clock\n");

  goto err_mod_clk;
 }

 ret = reset_control_reset(dev->rstc);
 if (ret) {
  dev_err(dev->dev, "Failed to apply reset\n");

  goto err_ram_clk;
 }

 return 0;

err_ram_clk:
 clk_disable_unprepare(dev->ram_clk);
err_mod_clk:
 clk_disable_unprepare(dev->mod_clk);
err_ahb_clk:
 clk_disable_unprepare(dev->ahb_clk);
err_sram:
 sunxi_sram_release(dev->dev);
err_mem:
 of_reserved_mem_device_release(dev->dev);

 return ret;
}
