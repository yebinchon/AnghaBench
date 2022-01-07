
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct xspi_platform_data {int num_chipselect; int bits_per_word; scalar_t__ num_devices; scalar_t__ devices; } ;
struct TYPE_11__ {int txrx_bufs; int setup_transfer; int chipselect; struct spi_master* master; } ;
struct xilinx_spi {int cs_inactive; int bytes_per_word; int irq; scalar_t__ regs; TYPE_2__ bitbang; int buffer_size; int (* write_fn ) (int ,scalar_t__) ;int (* read_fn ) (scalar_t__) ;int done; } ;
struct TYPE_10__ {int of_node; } ;
struct spi_master {int mode_bits; int num_chipselect; int bits_per_word_mask; TYPE_1__ dev; int bus_num; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_12__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; int id; } ;


 int EINVAL ;
 int ENODEV ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int SPI_BPW_MASK (int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_LOOP ;
 int SPI_LSB_FIRST ;
 int XILINX_SPI_MAX_CS ;
 int XSPI_CR_LOOP ;
 scalar_t__ XSPI_CR_OFFSET ;
 int dev_err (TYPE_3__*,char*) ;
 struct xspi_platform_data* dev_get_platdata (TYPE_3__*) ;
 int dev_info (TYPE_3__*,char*,unsigned long long,scalar_t__,int) ;
 int dev_name (TYPE_3__*) ;
 scalar_t__ devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 int devm_request_irq (TYPE_3__*,int,int ,int ,int ,struct xilinx_spi*) ;
 int init_completion (int *) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 struct spi_master* spi_alloc_master (TYPE_3__*,int) ;
 int spi_bitbang_start (TYPE_2__*) ;
 struct xilinx_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spi_new_device (struct spi_master*,scalar_t__) ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (scalar_t__) ;
 int xilinx_spi_chipselect ;
 int xilinx_spi_find_buffer_size (struct xilinx_spi*) ;
 int xilinx_spi_irq ;
 int xilinx_spi_setup_transfer ;
 int xilinx_spi_txrx_bufs ;
 int xspi_init_hw (struct xilinx_spi*) ;
 int xspi_read32 (scalar_t__) ;
 int xspi_read32_be (scalar_t__) ;
 int xspi_write32 (int ,scalar_t__) ;
 int xspi_write32_be (int ,scalar_t__) ;

__attribute__((used)) static int xilinx_spi_probe(struct platform_device *pdev)
{
 struct xilinx_spi *xspi;
 struct xspi_platform_data *pdata;
 struct resource *res;
 int ret, num_cs = 0, bits_per_word = 8;
 struct spi_master *master;
 u32 tmp;
 u8 i;

 pdata = dev_get_platdata(&pdev->dev);
 if (pdata) {
  num_cs = pdata->num_chipselect;
  bits_per_word = pdata->bits_per_word;
 } else {
  of_property_read_u32(pdev->dev.of_node, "xlnx,num-ss-bits",
       &num_cs);
 }

 if (!num_cs) {
  dev_err(&pdev->dev,
   "Missing slave select configuration data\n");
  return -EINVAL;
 }

 if (num_cs > XILINX_SPI_MAX_CS) {
  dev_err(&pdev->dev, "Invalid number of spi slaves\n");
  return -EINVAL;
 }

 master = spi_alloc_master(&pdev->dev, sizeof(struct xilinx_spi));
 if (!master)
  return -ENODEV;


 master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LSB_FIRST | SPI_LOOP |
       SPI_CS_HIGH;

 xspi = spi_master_get_devdata(master);
 xspi->cs_inactive = 0xffffffff;
 xspi->bitbang.master = master;
 xspi->bitbang.chipselect = xilinx_spi_chipselect;
 xspi->bitbang.setup_transfer = xilinx_spi_setup_transfer;
 xspi->bitbang.txrx_bufs = xilinx_spi_txrx_bufs;
 init_completion(&xspi->done);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 xspi->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(xspi->regs)) {
  ret = PTR_ERR(xspi->regs);
  goto put_master;
 }

 master->bus_num = pdev->id;
 master->num_chipselect = num_cs;
 master->dev.of_node = pdev->dev.of_node;
 xspi->read_fn = xspi_read32;
 xspi->write_fn = xspi_write32;

 xspi->write_fn(XSPI_CR_LOOP, xspi->regs + XSPI_CR_OFFSET);
 tmp = xspi->read_fn(xspi->regs + XSPI_CR_OFFSET);
 tmp &= XSPI_CR_LOOP;
 if (tmp != XSPI_CR_LOOP) {
  xspi->read_fn = xspi_read32_be;
  xspi->write_fn = xspi_write32_be;
 }

 master->bits_per_word_mask = SPI_BPW_MASK(bits_per_word);
 xspi->bytes_per_word = bits_per_word / 8;
 xspi->buffer_size = xilinx_spi_find_buffer_size(xspi);

 xspi->irq = platform_get_irq(pdev, 0);
 if (xspi->irq < 0 && xspi->irq != -ENXIO) {
  ret = xspi->irq;
  goto put_master;
 } else if (xspi->irq >= 0) {

  ret = devm_request_irq(&pdev->dev, xspi->irq, xilinx_spi_irq, 0,
    dev_name(&pdev->dev), xspi);
  if (ret)
   goto put_master;
 }


 xspi_init_hw(xspi);

 ret = spi_bitbang_start(&xspi->bitbang);
 if (ret) {
  dev_err(&pdev->dev, "spi_bitbang_start FAILED\n");
  goto put_master;
 }

 dev_info(&pdev->dev, "at 0x%08llX mapped to 0x%p, irq=%d\n",
  (unsigned long long)res->start, xspi->regs, xspi->irq);

 if (pdata) {
  for (i = 0; i < pdata->num_devices; i++)
   spi_new_device(master, pdata->devices + i);
 }

 platform_set_drvdata(pdev, master);
 return 0;

put_master:
 spi_master_put(master);

 return ret;
}
