
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct synquacer_spi {scalar_t__ clk_src_type; scalar_t__ regs; } ;
struct spi_master {int dummy; } ;


 scalar_t__ SYNQUACER_HSSPI_CLOCK_SRC_IPCLK ;
 int SYNQUACER_HSSPI_DMCFG_MSTARTEN ;
 int SYNQUACER_HSSPI_DMCFG_SSDC ;
 int SYNQUACER_HSSPI_MCTRL_CDSS ;
 int SYNQUACER_HSSPI_MCTRL_COMMAND_SEQUENCE_EN ;
 int SYNQUACER_HSSPI_MCTRL_MEN ;
 int SYNQUACER_HSSPI_MCTRL_SYNCON ;
 scalar_t__ SYNQUACER_HSSPI_REG_DMCFG ;
 scalar_t__ SYNQUACER_HSSPI_REG_FAULTC ;
 scalar_t__ SYNQUACER_HSSPI_REG_MCTRL ;
 scalar_t__ SYNQUACER_HSSPI_REG_RXC ;
 scalar_t__ SYNQUACER_HSSPI_REG_RXE ;
 scalar_t__ SYNQUACER_HSSPI_REG_TXC ;
 scalar_t__ SYNQUACER_HSSPI_REG_TXE ;
 int readl (scalar_t__) ;
 struct synquacer_spi* spi_master_get_devdata (struct spi_master*) ;
 int synquacer_spi_wait_status_update (struct synquacer_spi*,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int synquacer_spi_enable(struct spi_master *master)
{
 u32 val;
 int status;
 struct synquacer_spi *sspi = spi_master_get_devdata(master);


 writel(0, sspi->regs + SYNQUACER_HSSPI_REG_MCTRL);
 status = synquacer_spi_wait_status_update(sspi, 0);
 if (status < 0)
  return status;

 writel(0, sspi->regs + SYNQUACER_HSSPI_REG_TXE);
 writel(0, sspi->regs + SYNQUACER_HSSPI_REG_RXE);
 writel(~0, sspi->regs + SYNQUACER_HSSPI_REG_TXC);
 writel(~0, sspi->regs + SYNQUACER_HSSPI_REG_RXC);
 writel(~0, sspi->regs + SYNQUACER_HSSPI_REG_FAULTC);

 val = readl(sspi->regs + SYNQUACER_HSSPI_REG_DMCFG);
 val &= ~SYNQUACER_HSSPI_DMCFG_SSDC;
 val &= ~SYNQUACER_HSSPI_DMCFG_MSTARTEN;
 writel(val, sspi->regs + SYNQUACER_HSSPI_REG_DMCFG);

 val = readl(sspi->regs + SYNQUACER_HSSPI_REG_MCTRL);
 if (sspi->clk_src_type == SYNQUACER_HSSPI_CLOCK_SRC_IPCLK)
  val |= SYNQUACER_HSSPI_MCTRL_CDSS;
 else
  val &= ~SYNQUACER_HSSPI_MCTRL_CDSS;

 val &= ~SYNQUACER_HSSPI_MCTRL_COMMAND_SEQUENCE_EN;
 val |= SYNQUACER_HSSPI_MCTRL_MEN;
 val |= SYNQUACER_HSSPI_MCTRL_SYNCON;


 writel(val, sspi->regs + SYNQUACER_HSSPI_REG_MCTRL);
 status = synquacer_spi_wait_status_update(sspi, 1);
 if (status < 0)
  return status;

 return 0;
}
