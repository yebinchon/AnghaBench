
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {unsigned long max_speed_hz; scalar_t__ chip_select; } ;
struct fsl_qspi {scalar_t__ selected; int clk; } ;


 int clk_set_rate (int ,unsigned long) ;
 int fsl_qspi_clk_disable_unprep (struct fsl_qspi*) ;
 int fsl_qspi_clk_prep_enable (struct fsl_qspi*) ;
 int fsl_qspi_invalidate (struct fsl_qspi*) ;
 scalar_t__ needs_4x_clock (struct fsl_qspi*) ;

__attribute__((used)) static void fsl_qspi_select_mem(struct fsl_qspi *q, struct spi_device *spi)
{
 unsigned long rate = spi->max_speed_hz;
 int ret;

 if (q->selected == spi->chip_select)
  return;

 if (needs_4x_clock(q))
  rate *= 4;

 fsl_qspi_clk_disable_unprep(q);

 ret = clk_set_rate(q->clk, rate);
 if (ret)
  return;

 ret = fsl_qspi_clk_prep_enable(q);
 if (ret)
  return;

 q->selected = spi->chip_select;

 fsl_qspi_invalidate(q);
}
