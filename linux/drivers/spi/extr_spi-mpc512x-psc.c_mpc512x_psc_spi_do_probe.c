
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int of_node; } ;
struct spi_master {int mode_bits; TYPE_1__ dev; int cleanup; int unprepare_transfer_hardware; int transfer_one_message; int prepare_transfer_hardware; int setup; int num_chipselect; int bus_num; } ;
struct mpc52xx_psc {int dummy; } ;
struct mpc512x_psc_spi {int type; unsigned int irq; struct clk* clk_mclk; struct clk* clk_ipg; int mclk_rate; int txisrdone; struct mpc512x_psc_fifo* fifo; void* psc; int cs_control; } ;
struct mpc512x_psc_fifo {int dummy; } ;
struct fsl_spi_platform_data {int max_chipselect; int bus_num; int cs_control; } ;
struct device {int of_node; } ;
struct clk {int dummy; } ;


 int EFAULT ;
 int ENOMEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_LSB_FIRST ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_get_rate (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (struct device*,char*) ;
 struct fsl_spi_platform_data* dev_get_platdata (struct device*) ;
 int dev_set_drvdata (struct device*,struct spi_master*) ;
 struct clk* devm_clk_get (struct device*,char*) ;
 void* devm_ioremap (struct device*,int ,int ) ;
 int devm_request_irq (struct device*,unsigned int,int ,int ,char*,struct mpc512x_psc_spi*) ;
 int devm_spi_register_master (struct device*,struct spi_master*) ;
 int init_completion (int *) ;
 int mpc512x_psc_spi_cleanup ;
 int mpc512x_psc_spi_isr ;
 int mpc512x_psc_spi_msg_xfer ;
 int mpc512x_psc_spi_port_config (struct spi_master*,struct mpc512x_psc_spi*) ;
 int mpc512x_psc_spi_prep_xfer_hw ;
 int mpc512x_psc_spi_setup ;
 int mpc512x_psc_spi_unprep_xfer_hw ;
 int mpc512x_spi_cs_control ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 struct spi_master* spi_alloc_master (struct device*,int) ;
 struct mpc512x_psc_spi* spi_master_get_devdata (struct spi_master*) ;
 int spi_master_put (struct spi_master*) ;

__attribute__((used)) static int mpc512x_psc_spi_do_probe(struct device *dev, u32 regaddr,
           u32 size, unsigned int irq)
{
 struct fsl_spi_platform_data *pdata = dev_get_platdata(dev);
 struct mpc512x_psc_spi *mps;
 struct spi_master *master;
 int ret;
 void *tempp;
 struct clk *clk;

 master = spi_alloc_master(dev, sizeof *mps);
 if (master == ((void*)0))
  return -ENOMEM;

 dev_set_drvdata(dev, master);
 mps = spi_master_get_devdata(master);
 mps->type = (int)of_device_get_match_data(dev);
 mps->irq = irq;

 if (pdata == ((void*)0)) {
  mps->cs_control = mpc512x_spi_cs_control;
 } else {
  mps->cs_control = pdata->cs_control;
  master->bus_num = pdata->bus_num;
  master->num_chipselect = pdata->max_chipselect;
 }

 master->mode_bits = SPI_CPOL | SPI_CPHA | SPI_CS_HIGH | SPI_LSB_FIRST;
 master->setup = mpc512x_psc_spi_setup;
 master->prepare_transfer_hardware = mpc512x_psc_spi_prep_xfer_hw;
 master->transfer_one_message = mpc512x_psc_spi_msg_xfer;
 master->unprepare_transfer_hardware = mpc512x_psc_spi_unprep_xfer_hw;
 master->cleanup = mpc512x_psc_spi_cleanup;
 master->dev.of_node = dev->of_node;

 tempp = devm_ioremap(dev, regaddr, size);
 if (!tempp) {
  dev_err(dev, "could not ioremap I/O port range\n");
  ret = -EFAULT;
  goto free_master;
 }
 mps->psc = tempp;
 mps->fifo =
  (struct mpc512x_psc_fifo *)(tempp + sizeof(struct mpc52xx_psc));
 ret = devm_request_irq(dev, mps->irq, mpc512x_psc_spi_isr, IRQF_SHARED,
    "mpc512x-psc-spi", mps);
 if (ret)
  goto free_master;
 init_completion(&mps->txisrdone);

 clk = devm_clk_get(dev, "mclk");
 if (IS_ERR(clk)) {
  ret = PTR_ERR(clk);
  goto free_master;
 }
 ret = clk_prepare_enable(clk);
 if (ret)
  goto free_master;
 mps->clk_mclk = clk;
 mps->mclk_rate = clk_get_rate(clk);

 clk = devm_clk_get(dev, "ipg");
 if (IS_ERR(clk)) {
  ret = PTR_ERR(clk);
  goto free_mclk_clock;
 }
 ret = clk_prepare_enable(clk);
 if (ret)
  goto free_mclk_clock;
 mps->clk_ipg = clk;

 ret = mpc512x_psc_spi_port_config(master, mps);
 if (ret < 0)
  goto free_ipg_clock;

 ret = devm_spi_register_master(dev, master);
 if (ret < 0)
  goto free_ipg_clock;

 return ret;

free_ipg_clock:
 clk_disable_unprepare(mps->clk_ipg);
free_mclk_clock:
 clk_disable_unprepare(mps->clk_mclk);
free_master:
 spi_master_put(master);

 return ret;
}
