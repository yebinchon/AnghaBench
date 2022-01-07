
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct device_node* of_node; } ;
struct spi_master {int num_chipselect; int auto_runtime_pm; int mode_bits; int bus_num; TYPE_1__ dev; int rt; int unprepare_transfer_hardware; int transfer_one_message; int setup; int cleanup; } ;
struct pl022_ssp_controller {int num_chipselect; int* chipselects; int enable_dma; int autosuspend_delay; int rt; int bus_id; } ;
struct pl022 {int* chipselects; int clk; int * virtbase; int pump_transfers; int phybase; TYPE_2__* vendor; struct amba_device* adev; struct pl022_ssp_controller* master_info; struct spi_master* master; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct amba_id {TYPE_2__* data; } ;
struct TYPE_6__ {int start; } ;
struct amba_device {struct device dev; int * irq; TYPE_3__ res; int periphid; } ;
struct TYPE_5__ {scalar_t__ extended_cr; scalar_t__ internal_cs_ctrl; } ;


 int CONFIG_OF ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_LOOP ;
 int SPI_LSB_FIRST ;
 int SSP_CR1 (int *) ;
 int SSP_CR1_MASK_SSE ;
 int amba_release_regions (struct amba_device*) ;
 int amba_request_regions (struct amba_device*,int *) ;
 int amba_set_drvdata (struct amba_device*,struct pl022*) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 struct pl022_ssp_controller* dev_get_platdata (struct device*) ;
 int dev_info (struct device*,char*,int ,...) ;
 int devm_clk_get (struct device*,int *) ;
 scalar_t__ devm_gpio_request (struct device*,int,char*) ;
 int * devm_ioremap (struct device*,int ,int ) ;
 int* devm_kcalloc (struct device*,int,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,char*,struct pl022*) ;
 int devm_spi_register_master (struct device*,struct spi_master*) ;
 scalar_t__ gpio_direction_output (int,int) ;
 scalar_t__ gpio_is_valid (int) ;
 int load_ssp_default_config (struct pl022*) ;
 int of_get_named_gpio (struct device_node*,char*,int) ;
 int pl022_cleanup ;
 int pl022_dma_autoprobe (struct pl022*) ;
 int pl022_dma_probe (struct pl022*) ;
 int pl022_dma_remove (struct pl022*) ;
 int pl022_interrupt_handler ;
 struct pl022_ssp_controller* pl022_platform_data_dt_get (struct device*) ;
 int pl022_setup ;
 int pl022_transfer_one_message ;
 int pl022_unprepare_transfer_hardware ;
 int pm_runtime_put (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int ) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int pump_transfers ;
 int readw (int ) ;
 int resource_size (TYPE_3__*) ;
 struct spi_master* spi_alloc_master (struct device*,int) ;
 struct pl022* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int writew (int,int ) ;

__attribute__((used)) static int pl022_probe(struct amba_device *adev, const struct amba_id *id)
{
 struct device *dev = &adev->dev;
 struct pl022_ssp_controller *platform_info =
   dev_get_platdata(&adev->dev);
 struct spi_master *master;
 struct pl022 *pl022 = ((void*)0);
 struct device_node *np = adev->dev.of_node;
 int status = 0, i, num_cs;

 dev_info(&adev->dev,
   "ARM PL022 driver, device ID: 0x%08x\n", adev->periphid);
 if (!platform_info && IS_ENABLED(CONFIG_OF))
  platform_info = pl022_platform_data_dt_get(dev);

 if (!platform_info) {
  dev_err(dev, "probe: no platform data defined\n");
  return -ENODEV;
 }

 if (platform_info->num_chipselect) {
  num_cs = platform_info->num_chipselect;
 } else {
  dev_err(dev, "probe: no chip select defined\n");
  return -ENODEV;
 }


 master = spi_alloc_master(dev, sizeof(struct pl022));
 if (master == ((void*)0)) {
  dev_err(&adev->dev, "probe - cannot alloc SPI master\n");
  return -ENOMEM;
 }

 pl022 = spi_master_get_devdata(master);
 pl022->master = master;
 pl022->master_info = platform_info;
 pl022->adev = adev;
 pl022->vendor = id->data;
 pl022->chipselects = devm_kcalloc(dev, num_cs, sizeof(int),
       GFP_KERNEL);
 if (!pl022->chipselects) {
  status = -ENOMEM;
  goto err_no_mem;
 }





 master->bus_num = platform_info->bus_id;
 master->num_chipselect = num_cs;
 master->cleanup = pl022_cleanup;
 master->setup = pl022_setup;
 master->auto_runtime_pm = 1;
 master->transfer_one_message = pl022_transfer_one_message;
 master->unprepare_transfer_hardware = pl022_unprepare_transfer_hardware;
 master->rt = platform_info->rt;
 master->dev.of_node = dev->of_node;

 if (platform_info->num_chipselect && platform_info->chipselects) {
  for (i = 0; i < num_cs; i++)
   pl022->chipselects[i] = platform_info->chipselects[i];
 } else if (pl022->vendor->internal_cs_ctrl) {
  for (i = 0; i < num_cs; i++)
   pl022->chipselects[i] = i;
 } else if (IS_ENABLED(CONFIG_OF)) {
  for (i = 0; i < num_cs; i++) {
   int cs_gpio = of_get_named_gpio(np, "cs-gpios", i);

   if (cs_gpio == -EPROBE_DEFER) {
    status = -EPROBE_DEFER;
    goto err_no_gpio;
   }

   pl022->chipselects[i] = cs_gpio;

   if (gpio_is_valid(cs_gpio)) {
    if (devm_gpio_request(dev, cs_gpio, "ssp-pl022"))
     dev_err(&adev->dev,
      "could not request %d gpio\n",
      cs_gpio);
    else if (gpio_direction_output(cs_gpio, 1))
     dev_err(&adev->dev,
      "could not set gpio %d as output\n",
      cs_gpio);
   }
  }
 }





 master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH | SPI_LOOP;
 if (pl022->vendor->extended_cr)
  master->mode_bits |= SPI_LSB_FIRST;

 dev_dbg(&adev->dev, "BUSNO: %d\n", master->bus_num);

 status = amba_request_regions(adev, ((void*)0));
 if (status)
  goto err_no_ioregion;

 pl022->phybase = adev->res.start;
 pl022->virtbase = devm_ioremap(dev, adev->res.start,
           resource_size(&adev->res));
 if (pl022->virtbase == ((void*)0)) {
  status = -ENOMEM;
  goto err_no_ioremap;
 }
 dev_info(&adev->dev, "mapped registers from %pa to %p\n",
  &adev->res.start, pl022->virtbase);

 pl022->clk = devm_clk_get(&adev->dev, ((void*)0));
 if (IS_ERR(pl022->clk)) {
  status = PTR_ERR(pl022->clk);
  dev_err(&adev->dev, "could not retrieve SSP/SPI bus clock\n");
  goto err_no_clk;
 }

 status = clk_prepare_enable(pl022->clk);
 if (status) {
  dev_err(&adev->dev, "could not enable SSP/SPI bus clock\n");
  goto err_no_clk_en;
 }


 tasklet_init(&pl022->pump_transfers, pump_transfers,
       (unsigned long)pl022);


 writew((readw(SSP_CR1(pl022->virtbase)) & (~SSP_CR1_MASK_SSE)),
        SSP_CR1(pl022->virtbase));
 load_ssp_default_config(pl022);

 status = devm_request_irq(dev, adev->irq[0], pl022_interrupt_handler,
      0, "pl022", pl022);
 if (status < 0) {
  dev_err(&adev->dev, "probe - cannot get IRQ (%d)\n", status);
  goto err_no_irq;
 }


 status = pl022_dma_autoprobe(pl022);
 if (status == -EPROBE_DEFER) {
  dev_dbg(dev, "deferring probe to get DMA channel\n");
  goto err_no_irq;
 }


 if (status == 0)
  platform_info->enable_dma = 1;
 else if (platform_info->enable_dma) {
  status = pl022_dma_probe(pl022);
  if (status != 0)
   platform_info->enable_dma = 0;
 }


 amba_set_drvdata(adev, pl022);
 status = devm_spi_register_master(&adev->dev, master);
 if (status != 0) {
  dev_err(&adev->dev,
   "probe - problem registering spi master\n");
  goto err_spi_register;
 }
 dev_dbg(dev, "probe succeeded\n");


 if (platform_info->autosuspend_delay > 0) {
  dev_info(&adev->dev,
   "will use autosuspend for runtime pm, delay %dms\n",
   platform_info->autosuspend_delay);
  pm_runtime_set_autosuspend_delay(dev,
   platform_info->autosuspend_delay);
  pm_runtime_use_autosuspend(dev);
 }
 pm_runtime_put(dev);

 return 0;

 err_spi_register:
 if (platform_info->enable_dma)
  pl022_dma_remove(pl022);
 err_no_irq:
 clk_disable_unprepare(pl022->clk);
 err_no_clk_en:
 err_no_clk:
 err_no_ioremap:
 amba_release_regions(adev);
 err_no_ioregion:
 err_no_gpio:
 err_no_mem:
 spi_master_put(master);
 return status;
}
