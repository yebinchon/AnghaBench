
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct spi_controller {int mode_bits; int bus_num; TYPE_1__ dev; int * mem_ops; int num_chipselect; } ;
struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {int name; struct device dev; } ;
struct nxp_fspi {int lock; void* clk; void* clk_en; int memmap_phy_size; int memmap_phy; void* ahb_addr; void* iobase; int devtype_data; struct device* dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int NXP_FSPI_MAX_CHIPSELECT ;
 int PTR_ERR (void*) ;
 int SPI_RX_DUAL ;
 int SPI_RX_OCTAL ;
 int SPI_RX_QUAD ;
 int SPI_TX_DUAL ;
 int SPI_TX_OCTAL ;
 int SPI_TX_QUAD ;
 int dev_err (struct device*,char*,...) ;
 void* devm_clk_get (struct device*,char*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct nxp_fspi*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int nxp_fspi_clk_disable_unprep (struct nxp_fspi*) ;
 int nxp_fspi_clk_prep_enable (struct nxp_fspi*) ;
 int nxp_fspi_default_setup (struct nxp_fspi*) ;
 int nxp_fspi_irq_handler ;
 int nxp_fspi_mem_ops ;
 int of_device_get_match_data (struct device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct nxp_fspi*) ;
 int resource_size (struct resource*) ;
 struct spi_controller* spi_alloc_master (struct device*,int) ;
 struct nxp_fspi* spi_controller_get_devdata (struct spi_controller*) ;
 int spi_controller_put (struct spi_controller*) ;
 int spi_register_controller (struct spi_controller*) ;

__attribute__((used)) static int nxp_fspi_probe(struct platform_device *pdev)
{
 struct spi_controller *ctlr;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;
 struct resource *res;
 struct nxp_fspi *f;
 int ret;

 ctlr = spi_alloc_master(&pdev->dev, sizeof(*f));
 if (!ctlr)
  return -ENOMEM;

 ctlr->mode_bits = SPI_RX_DUAL | SPI_RX_QUAD | SPI_RX_OCTAL |
     SPI_TX_DUAL | SPI_TX_QUAD | SPI_TX_OCTAL;

 f = spi_controller_get_devdata(ctlr);
 f->dev = dev;
 f->devtype_data = of_device_get_match_data(dev);
 if (!f->devtype_data) {
  ret = -ENODEV;
  goto err_put_ctrl;
 }

 platform_set_drvdata(pdev, f);


 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "fspi_base");
 f->iobase = devm_ioremap_resource(dev, res);
 if (IS_ERR(f->iobase)) {
  ret = PTR_ERR(f->iobase);
  goto err_put_ctrl;
 }


 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "fspi_mmap");
 f->ahb_addr = devm_ioremap_resource(dev, res);
 if (IS_ERR(f->ahb_addr)) {
  ret = PTR_ERR(f->ahb_addr);
  goto err_put_ctrl;
 }


 f->memmap_phy = res->start;
 f->memmap_phy_size = resource_size(res);


 f->clk_en = devm_clk_get(dev, "fspi_en");
 if (IS_ERR(f->clk_en)) {
  ret = PTR_ERR(f->clk_en);
  goto err_put_ctrl;
 }

 f->clk = devm_clk_get(dev, "fspi");
 if (IS_ERR(f->clk)) {
  ret = PTR_ERR(f->clk);
  goto err_put_ctrl;
 }

 ret = nxp_fspi_clk_prep_enable(f);
 if (ret) {
  dev_err(dev, "can not enable the clock\n");
  goto err_put_ctrl;
 }


 ret = platform_get_irq(pdev, 0);
 if (ret < 0)
  goto err_disable_clk;

 ret = devm_request_irq(dev, ret,
   nxp_fspi_irq_handler, 0, pdev->name, f);
 if (ret) {
  dev_err(dev, "failed to request irq: %d\n", ret);
  goto err_disable_clk;
 }

 mutex_init(&f->lock);

 ctlr->bus_num = -1;
 ctlr->num_chipselect = NXP_FSPI_MAX_CHIPSELECT;
 ctlr->mem_ops = &nxp_fspi_mem_ops;

 nxp_fspi_default_setup(f);

 ctlr->dev.of_node = np;

 ret = spi_register_controller(ctlr);
 if (ret)
  goto err_destroy_mutex;

 return 0;

err_destroy_mutex:
 mutex_destroy(&f->lock);

err_disable_clk:
 nxp_fspi_clk_disable_unprep(f);

err_put_ctrl:
 spi_controller_put(ctlr);

 dev_err(dev, "NXP FSPI probe failed\n");
 return ret;
}
