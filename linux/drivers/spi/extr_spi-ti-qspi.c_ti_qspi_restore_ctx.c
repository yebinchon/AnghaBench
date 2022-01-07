
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_qspi_regs {int clkctrl; } ;
struct ti_qspi {struct ti_qspi_regs ctx_reg; } ;


 int QSPI_SPI_CLOCK_CNTRL_REG ;
 int ti_qspi_write (struct ti_qspi*,int ,int ) ;

__attribute__((used)) static void ti_qspi_restore_ctx(struct ti_qspi *qspi)
{
 struct ti_qspi_regs *ctx_reg = &qspi->ctx_reg;

 ti_qspi_write(qspi, ctx_reg->clkctrl, QSPI_SPI_CLOCK_CNTRL_REG);
}
