
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct stm32_qspi_flash {size_t cs; scalar_t__ presc; struct stm32_qspi* qspi; } ;
struct stm32_qspi {int cr_reg; int dcr_reg; int lock; scalar_t__ io_base; struct stm32_qspi_flash* flash; int clk_rate; } ;
struct spi_device {size_t chip_select; int max_speed_hz; struct spi_controller* master; } ;
struct spi_controller {scalar_t__ busy; } ;


 int CR_EN ;
 int CR_FTHRES_SHIFT ;
 int CR_SSHIFT ;
 int DCR_FSIZE_MASK ;
 scalar_t__ DIV_ROUND_UP (int ,int ) ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ QSPI_CR ;
 scalar_t__ QSPI_DCR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stm32_qspi* spi_controller_get_devdata (struct spi_controller*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int stm32_qspi_setup(struct spi_device *spi)
{
 struct spi_controller *ctrl = spi->master;
 struct stm32_qspi *qspi = spi_controller_get_devdata(ctrl);
 struct stm32_qspi_flash *flash;
 u32 presc;

 if (ctrl->busy)
  return -EBUSY;

 if (!spi->max_speed_hz)
  return -EINVAL;

 presc = DIV_ROUND_UP(qspi->clk_rate, spi->max_speed_hz) - 1;

 flash = &qspi->flash[spi->chip_select];
 flash->qspi = qspi;
 flash->cs = spi->chip_select;
 flash->presc = presc;

 mutex_lock(&qspi->lock);
 qspi->cr_reg = 3 << CR_FTHRES_SHIFT | CR_SSHIFT | CR_EN;
 writel_relaxed(qspi->cr_reg, qspi->io_base + QSPI_CR);


 qspi->dcr_reg = DCR_FSIZE_MASK;
 writel_relaxed(qspi->dcr_reg, qspi->io_base + QSPI_DCR);
 mutex_unlock(&qspi->lock);

 return 0;
}
