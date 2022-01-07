
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct txx9spi {int baseclk; int last_chipselect; int * clk; int * membase; int waitq; int queue; int lock; int work; } ;
struct spi_master {int max_speed_hz; int mode_bits; int bits_per_word_mask; scalar_t__ num_chipselect; int transfer; int setup; int bus_num; int min_speed_hz; } ;
struct resource {scalar_t__ start; } ;
struct platform_device {int dev; int id; } ;


 int DIV_ROUND_UP (int,scalar_t__) ;
 int EBUSY ;
 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int SPI_BPW_MASK (int) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 scalar_t__ SPI_MAX_DIVIDER ;
 int SPI_MIN_DIVIDER ;
 int TXx9_SPMCR ;
 int TXx9_SPMCR_BCLR ;
 int TXx9_SPMCR_CONFIG ;
 int TXx9_SPMCR_OPMODE ;
 int TXx9_SPMCR_SPSTP ;
 scalar_t__ UINT_MAX ;
 int clk_disable_unprepare (int *) ;
 int clk_get_rate (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_info (int *,char*,unsigned long long,int,int) ;
 int * devm_clk_get (int *,char*) ;
 int * devm_ioremap_resource (int *,struct resource*) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct txx9spi*) ;
 int devm_spi_register_master (int *,struct spi_master*) ;
 int init_waitqueue_head (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spi_master*) ;
 struct spi_master* spi_alloc_master (int *,int) ;
 struct txx9spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;
 int spin_lock_init (int *) ;
 int txx9spi_interrupt ;
 int txx9spi_rd (struct txx9spi*,int ) ;
 int txx9spi_setup ;
 int txx9spi_transfer ;
 int txx9spi_work ;
 int txx9spi_wr (struct txx9spi*,int,int ) ;

__attribute__((used)) static int txx9spi_probe(struct platform_device *dev)
{
 struct spi_master *master;
 struct txx9spi *c;
 struct resource *res;
 int ret = -ENODEV;
 u32 mcr;
 int irq;

 master = spi_alloc_master(&dev->dev, sizeof(*c));
 if (!master)
  return ret;
 c = spi_master_get_devdata(master);
 platform_set_drvdata(dev, master);

 INIT_WORK(&c->work, txx9spi_work);
 spin_lock_init(&c->lock);
 INIT_LIST_HEAD(&c->queue);
 init_waitqueue_head(&c->waitq);

 c->clk = devm_clk_get(&dev->dev, "spi-baseclk");
 if (IS_ERR(c->clk)) {
  ret = PTR_ERR(c->clk);
  c->clk = ((void*)0);
  goto exit;
 }
 ret = clk_prepare_enable(c->clk);
 if (ret) {
  c->clk = ((void*)0);
  goto exit;
 }
 c->baseclk = clk_get_rate(c->clk);
 master->min_speed_hz = DIV_ROUND_UP(c->baseclk, SPI_MAX_DIVIDER + 1);
 master->max_speed_hz = c->baseclk / (SPI_MIN_DIVIDER + 1);

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 c->membase = devm_ioremap_resource(&dev->dev, res);
 if (IS_ERR(c->membase))
  goto exit_busy;


 mcr = txx9spi_rd(c, TXx9_SPMCR);
 mcr &= ~(TXx9_SPMCR_OPMODE | TXx9_SPMCR_SPSTP | TXx9_SPMCR_BCLR);
 txx9spi_wr(c, mcr | TXx9_SPMCR_CONFIG | TXx9_SPMCR_BCLR, TXx9_SPMCR);

 irq = platform_get_irq(dev, 0);
 if (irq < 0)
  goto exit_busy;
 ret = devm_request_irq(&dev->dev, irq, txx9spi_interrupt, 0,
          "spi_txx9", c);
 if (ret)
  goto exit;

 c->last_chipselect = -1;

 dev_info(&dev->dev, "at %#llx, irq %d, %dMHz\n",
   (unsigned long long)res->start, irq,
   (c->baseclk + 500000) / 1000000);


 master->mode_bits = SPI_CS_HIGH | SPI_CPOL | SPI_CPHA;

 master->bus_num = dev->id;
 master->setup = txx9spi_setup;
 master->transfer = txx9spi_transfer;
 master->num_chipselect = (u16)UINT_MAX;
 master->bits_per_word_mask = SPI_BPW_MASK(8) | SPI_BPW_MASK(16);

 ret = devm_spi_register_master(&dev->dev, master);
 if (ret)
  goto exit;
 return 0;
exit_busy:
 ret = -EBUSY;
exit:
 clk_disable_unprepare(c->clk);
 spi_master_put(master);
 return ret;
}
