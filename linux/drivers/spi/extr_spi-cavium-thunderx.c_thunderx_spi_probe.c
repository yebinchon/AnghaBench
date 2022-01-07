
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int of_node; } ;
struct spi_master {int num_chipselect; int mode_bits; TYPE_2__ dev; int max_speed_hz; int bits_per_word_mask; int transfer_one_message; } ;
struct pci_device_id {int dummy; } ;
struct device {int of_node; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_3__ {int config; int status; int tx; int data; } ;
struct octeon_spi {int clk; scalar_t__ sys_freq; TYPE_1__ regs; int register_base; } ;


 int DRV_NAME ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int OCTEON_SPI_MAX_CLOCK_HZ ;
 int PTR_ERR (int ) ;
 int SPI_3WIRE ;
 int SPI_BPW_MASK (int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_LSB_FIRST ;
 scalar_t__ SYS_FREQ_DEFAULT ;
 int clk_disable_unprepare (int ) ;
 scalar_t__ clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_info (struct device*,char*,scalar_t__) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_spi_register_master (struct device*,struct spi_master*) ;
 int octeon_spi_transfer_one_message ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct spi_master*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap (struct pci_dev*,int ,int ) ;
 struct spi_master* spi_alloc_master (struct device*,int) ;
 struct octeon_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int thunderx_spi_probe(struct pci_dev *pdev,
         const struct pci_device_id *ent)
{
 struct device *dev = &pdev->dev;
 struct spi_master *master;
 struct octeon_spi *p;
 int ret;

 master = spi_alloc_master(dev, sizeof(struct octeon_spi));
 if (!master)
  return -ENOMEM;

 p = spi_master_get_devdata(master);

 ret = pcim_enable_device(pdev);
 if (ret)
  goto error;

 ret = pci_request_regions(pdev, DRV_NAME);
 if (ret)
  goto error;

 p->register_base = pcim_iomap(pdev, 0, pci_resource_len(pdev, 0));
 if (!p->register_base) {
  ret = -EINVAL;
  goto error;
 }

 p->regs.config = 0x1000;
 p->regs.status = 0x1008;
 p->regs.tx = 0x1010;
 p->regs.data = 0x1080;

 p->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(p->clk)) {
  ret = PTR_ERR(p->clk);
  goto error;
 }

 ret = clk_prepare_enable(p->clk);
 if (ret)
  goto error;

 p->sys_freq = clk_get_rate(p->clk);
 if (!p->sys_freq)
  p->sys_freq = SYS_FREQ_DEFAULT;
 dev_info(dev, "Set system clock to %u\n", p->sys_freq);

 master->num_chipselect = 4;
 master->mode_bits = SPI_CPHA | SPI_CPOL | SPI_CS_HIGH |
       SPI_LSB_FIRST | SPI_3WIRE;
 master->transfer_one_message = octeon_spi_transfer_one_message;
 master->bits_per_word_mask = SPI_BPW_MASK(8);
 master->max_speed_hz = OCTEON_SPI_MAX_CLOCK_HZ;
 master->dev.of_node = pdev->dev.of_node;

 pci_set_drvdata(pdev, master);

 ret = devm_spi_register_master(dev, master);
 if (ret)
  goto error;

 return 0;

error:
 clk_disable_unprepare(p->clk);
 spi_master_put(master);
 return ret;
}
