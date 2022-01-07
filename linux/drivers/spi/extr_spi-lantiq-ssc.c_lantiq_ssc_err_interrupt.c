
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct lantiq_ssc_spi {int work; int wq; TYPE_2__* master; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {TYPE_1__* cur_msg; } ;
struct TYPE_3__ {int status; } ;


 int EIO ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int LTQ_SPI_STAT ;
 int LTQ_SPI_STAT_AE ;
 int LTQ_SPI_STAT_ERRORS ;
 int LTQ_SPI_STAT_ME ;
 int LTQ_SPI_STAT_RE ;
 int LTQ_SPI_STAT_RUE ;
 int LTQ_SPI_STAT_TE ;
 int LTQ_SPI_STAT_TUE ;
 int LTQ_SPI_WHBSTATE ;
 int LTQ_SPI_WHBSTATE_CLR_ERRORS ;
 int dev_err (int ,char*) ;
 int lantiq_ssc_maskl (struct lantiq_ssc_spi*,int ,int ,int ) ;
 int lantiq_ssc_readl (struct lantiq_ssc_spi*,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t lantiq_ssc_err_interrupt(int irq, void *data)
{
 struct lantiq_ssc_spi *spi = data;
 u32 stat = lantiq_ssc_readl(spi, LTQ_SPI_STAT);

 if (!(stat & LTQ_SPI_STAT_ERRORS))
  return IRQ_NONE;

 if (stat & LTQ_SPI_STAT_RUE)
  dev_err(spi->dev, "receive underflow error\n");
 if (stat & LTQ_SPI_STAT_TUE)
  dev_err(spi->dev, "transmit underflow error\n");
 if (stat & LTQ_SPI_STAT_AE)
  dev_err(spi->dev, "abort error\n");
 if (stat & LTQ_SPI_STAT_RE)
  dev_err(spi->dev, "receive overflow error\n");
 if (stat & LTQ_SPI_STAT_TE)
  dev_err(spi->dev, "transmit overflow error\n");
 if (stat & LTQ_SPI_STAT_ME)
  dev_err(spi->dev, "mode error\n");


 lantiq_ssc_maskl(spi, 0, LTQ_SPI_WHBSTATE_CLR_ERRORS, LTQ_SPI_WHBSTATE);


 if (spi->master->cur_msg)
  spi->master->cur_msg->status = -EIO;
 queue_work(spi->wq, &spi->work);

 return IRQ_HANDLED;
}
