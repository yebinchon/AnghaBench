
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_ppc4xx_regs {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct spi_master {int mode_bits; int num_chipselect; int bits_per_word_mask; int cleanup; int setup; TYPE_1__ dev; } ;
struct spi_bitbang {struct spi_master* master; scalar_t__ use_dma; int txrx_bufs; int chipselect; int setup_transfer; } ;
struct resource {int start; } ;
struct ppc4xx_spi {int* gpios; unsigned int opb_freq; int mapsize; int irqnum; int mapbase; int regs; struct spi_master* master; struct spi_bitbang bitbang; int done; struct device* dev; } ;
struct device {scalar_t__ dma_mask; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int name; } ;
typedef enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;


 int DRIVER_NAME ;
 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int OF_GPIO_ACTIVE_LOW ;
 int SPI_BPW_MASK (int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_LSB_FIRST ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*) ;
 int free_gpios (struct ppc4xx_spi*) ;
 int free_irq (int ,struct ppc4xx_spi*) ;
 int gpio_direction_output (int,int) ;
 scalar_t__ gpio_is_valid (int) ;
 int gpio_request (int,int ) ;
 int init_completion (int *) ;
 int ioremap (int ,int) ;
 int iounmap (int ) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int* kcalloc (int,int,int ) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 int of_get_gpio_flags (struct device_node*,int,int*) ;
 unsigned int* of_get_property (struct device_node*,char*,int *) ;
 int of_gpio_count (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 int release_mem_region (int ,int) ;
 int request_irq (int ,int ,int ,char*,void*) ;
 int request_mem_region (int ,int,int ) ;
 int resource_size (struct resource*) ;
 struct spi_master* spi_alloc_master (struct device*,int) ;
 int spi_bitbang_start (struct spi_bitbang*) ;
 struct ppc4xx_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spi_ppc4xx_chipsel ;
 int spi_ppc4xx_cleanup ;
 int spi_ppc4xx_enable (struct ppc4xx_spi*) ;
 int spi_ppc4xx_int ;
 int spi_ppc4xx_setup ;
 int spi_ppc4xx_setupxfer ;
 int spi_ppc4xx_txrx ;

__attribute__((used)) static int spi_ppc4xx_of_probe(struct platform_device *op)
{
 struct ppc4xx_spi *hw;
 struct spi_master *master;
 struct spi_bitbang *bbp;
 struct resource resource;
 struct device_node *np = op->dev.of_node;
 struct device *dev = &op->dev;
 struct device_node *opbnp;
 int ret;
 int num_gpios;
 const unsigned int *clk;

 master = spi_alloc_master(dev, sizeof *hw);
 if (master == ((void*)0))
  return -ENOMEM;
 master->dev.of_node = np;
 platform_set_drvdata(op, master);
 hw = spi_master_get_devdata(master);
 hw->master = master;
 hw->dev = dev;

 init_completion(&hw->done);






 num_gpios = of_gpio_count(np);
 if (num_gpios > 0) {
  int i;

  hw->gpios = kcalloc(num_gpios, sizeof(*hw->gpios), GFP_KERNEL);
  if (!hw->gpios) {
   ret = -ENOMEM;
   goto free_master;
  }

  for (i = 0; i < num_gpios; i++) {
   int gpio;
   enum of_gpio_flags flags;

   gpio = of_get_gpio_flags(np, i, &flags);
   hw->gpios[i] = gpio;

   if (gpio_is_valid(gpio)) {

    ret = gpio_request(gpio, np->name);
    if (ret < 0) {
     dev_err(dev,
      "can't request gpio #%d: %d\n",
      i, ret);
     goto free_gpios;
    }

    gpio_direction_output(gpio,
      !!(flags & OF_GPIO_ACTIVE_LOW));
   } else if (gpio == -EEXIST) {
    ;
   } else {
    dev_err(dev, "invalid gpio #%d: %d\n", i, gpio);
    ret = -EINVAL;
    goto free_gpios;
   }
  }
 }


 bbp = &hw->bitbang;
 bbp->master = hw->master;
 bbp->setup_transfer = spi_ppc4xx_setupxfer;
 bbp->chipselect = spi_ppc4xx_chipsel;
 bbp->txrx_bufs = spi_ppc4xx_txrx;
 bbp->use_dma = 0;
 bbp->master->setup = spi_ppc4xx_setup;
 bbp->master->cleanup = spi_ppc4xx_cleanup;
 bbp->master->bits_per_word_mask = SPI_BPW_MASK(8);


 bbp->master->mode_bits =
  SPI_CPHA | SPI_CPOL | SPI_CS_HIGH | SPI_LSB_FIRST;


 bbp->master->num_chipselect = num_gpios > 0 ? num_gpios : 0;


 opbnp = of_find_compatible_node(((void*)0), ((void*)0), "ibm,opb");
 if (opbnp == ((void*)0)) {
  dev_err(dev, "OPB: cannot find node\n");
  ret = -ENODEV;
  goto free_gpios;
 }

 clk = of_get_property(opbnp, "clock-frequency", ((void*)0));
 if (clk == ((void*)0)) {
  dev_err(dev, "OPB: no clock-frequency property set\n");
  of_node_put(opbnp);
  ret = -ENODEV;
  goto free_gpios;
 }
 hw->opb_freq = *clk;
 hw->opb_freq >>= 2;
 of_node_put(opbnp);

 ret = of_address_to_resource(np, 0, &resource);
 if (ret) {
  dev_err(dev, "error while parsing device node resource\n");
  goto free_gpios;
 }
 hw->mapbase = resource.start;
 hw->mapsize = resource_size(&resource);


 if (hw->mapsize < sizeof(struct spi_ppc4xx_regs)) {
  dev_err(dev, "too small to map registers\n");
  ret = -EINVAL;
  goto free_gpios;
 }


 hw->irqnum = irq_of_parse_and_map(np, 0);
 ret = request_irq(hw->irqnum, spi_ppc4xx_int,
     0, "spi_ppc4xx_of", (void *)hw);
 if (ret) {
  dev_err(dev, "unable to allocate interrupt\n");
  goto free_gpios;
 }

 if (!request_mem_region(hw->mapbase, hw->mapsize, DRIVER_NAME)) {
  dev_err(dev, "resource unavailable\n");
  ret = -EBUSY;
  goto request_mem_error;
 }

 hw->regs = ioremap(hw->mapbase, sizeof(struct spi_ppc4xx_regs));

 if (!hw->regs) {
  dev_err(dev, "unable to memory map registers\n");
  ret = -ENXIO;
  goto map_io_error;
 }

 spi_ppc4xx_enable(hw);


 dev->dma_mask = 0;
 ret = spi_bitbang_start(bbp);
 if (ret) {
  dev_err(dev, "failed to register SPI master\n");
  goto unmap_regs;
 }

 dev_info(dev, "driver initialized\n");

 return 0;

unmap_regs:
 iounmap(hw->regs);
map_io_error:
 release_mem_region(hw->mapbase, hw->mapsize);
request_mem_error:
 free_irq(hw->irqnum, hw);
free_gpios:
 free_gpios(hw);
free_master:
 spi_master_put(master);

 dev_err(dev, "initialization failed\n");
 return ret;
}
