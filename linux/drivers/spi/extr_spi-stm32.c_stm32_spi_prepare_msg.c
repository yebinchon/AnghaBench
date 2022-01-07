
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct stm32_spi {int lock; TYPE_6__* cfg; scalar_t__ base; int dev; scalar_t__ cur_midi; } ;
struct spi_message {struct spi_device* spi; } ;
struct spi_master {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct spi_device {int mode; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {TYPE_5__* regs; } ;
struct TYPE_10__ {int mask; scalar_t__ reg; } ;
struct TYPE_9__ {int mask; } ;
struct TYPE_8__ {int mask; } ;
struct TYPE_11__ {TYPE_4__ cpol; TYPE_3__ lsb_first; TYPE_2__ cpha; } ;


 int SPI_CPHA ;
 int SPI_CPOL ;
 int SPI_CS_HIGH ;
 int SPI_LSB_FIRST ;
 int dev_dbg (int ,char*,int,...) ;
 int of_property_read_u32 (struct device_node*,char*,scalar_t__*) ;
 int readl_relaxed (scalar_t__) ;
 struct stm32_spi* spi_master_get_devdata (struct spi_master*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int stm32_spi_prepare_msg(struct spi_master *master,
     struct spi_message *msg)
{
 struct stm32_spi *spi = spi_master_get_devdata(master);
 struct spi_device *spi_dev = msg->spi;
 struct device_node *np = spi_dev->dev.of_node;
 unsigned long flags;
 u32 clrb = 0, setb = 0;


 spi->cur_midi = 0;
 if (np && !of_property_read_u32(np, "st,spi-midi-ns", &spi->cur_midi))
  dev_dbg(spi->dev, "%dns inter-data idleness\n", spi->cur_midi);

 if (spi_dev->mode & SPI_CPOL)
  setb |= spi->cfg->regs->cpol.mask;
 else
  clrb |= spi->cfg->regs->cpol.mask;

 if (spi_dev->mode & SPI_CPHA)
  setb |= spi->cfg->regs->cpha.mask;
 else
  clrb |= spi->cfg->regs->cpha.mask;

 if (spi_dev->mode & SPI_LSB_FIRST)
  setb |= spi->cfg->regs->lsb_first.mask;
 else
  clrb |= spi->cfg->regs->lsb_first.mask;

 dev_dbg(spi->dev, "cpol=%d cpha=%d lsb_first=%d cs_high=%d\n",
  spi_dev->mode & SPI_CPOL,
  spi_dev->mode & SPI_CPHA,
  spi_dev->mode & SPI_LSB_FIRST,
  spi_dev->mode & SPI_CS_HIGH);

 spin_lock_irqsave(&spi->lock, flags);


 if (clrb || setb)
  writel_relaxed(
   (readl_relaxed(spi->base + spi->cfg->regs->cpol.reg) &
    ~clrb) | setb,
   spi->base + spi->cfg->regs->cpol.reg);

 spin_unlock_irqrestore(&spi->lock, flags);

 return 0;
}
