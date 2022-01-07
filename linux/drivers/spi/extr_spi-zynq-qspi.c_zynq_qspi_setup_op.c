
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynq_qspi {int pclk; int refclk; } ;
struct spi_device {struct spi_controller* master; } ;
struct spi_controller {scalar_t__ busy; } ;


 int EBUSY ;
 int ZYNQ_QSPI_ENABLE_ENABLE_MASK ;
 int ZYNQ_QSPI_ENABLE_OFFSET ;
 int clk_enable (int ) ;
 struct zynq_qspi* spi_controller_get_devdata (struct spi_controller*) ;
 int zynq_qspi_write (struct zynq_qspi*,int ,int ) ;

__attribute__((used)) static int zynq_qspi_setup_op(struct spi_device *spi)
{
 struct spi_controller *ctrl = spi->master;
 struct zynq_qspi *qspi = spi_controller_get_devdata(ctrl);

 if (ctrl->busy)
  return -EBUSY;

 clk_enable(qspi->refclk);
 clk_enable(qspi->pclk);
 zynq_qspi_write(qspi, ZYNQ_QSPI_ENABLE_OFFSET,
   ZYNQ_QSPI_ENABLE_ENABLE_MASK);

 return 0;
}
