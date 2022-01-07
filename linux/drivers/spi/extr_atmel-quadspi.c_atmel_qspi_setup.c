
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct spi_device {int max_speed_hz; struct spi_controller* master; } ;
struct spi_controller {scalar_t__ busy; } ;
struct atmel_qspi {scalar_t__ regs; int scr; int pclk; } ;


 scalar_t__ DIV_ROUND_UP (unsigned long,int ) ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ QSPI_SCR ;
 int QSPI_SCR_SCBR (scalar_t__) ;
 unsigned long clk_get_rate (int ) ;
 struct atmel_qspi* spi_controller_get_devdata (struct spi_controller*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int atmel_qspi_setup(struct spi_device *spi)
{
 struct spi_controller *ctrl = spi->master;
 struct atmel_qspi *aq = spi_controller_get_devdata(ctrl);
 unsigned long src_rate;
 u32 scbr;

 if (ctrl->busy)
  return -EBUSY;

 if (!spi->max_speed_hz)
  return -EINVAL;

 src_rate = clk_get_rate(aq->pclk);
 if (!src_rate)
  return -EINVAL;


 scbr = DIV_ROUND_UP(src_rate, spi->max_speed_hz);
 if (scbr > 0)
  scbr--;

 aq->scr = QSPI_SCR_SCBR(scbr);
 writel_relaxed(aq->scr, aq->regs + QSPI_SCR);

 return 0;
}
