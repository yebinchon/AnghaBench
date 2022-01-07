
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sirfsoc_spi {TYPE_1__* regs; scalar_t__ base; } ;
struct TYPE_2__ {scalar_t__ usp_mode1; } ;


 int SIRFSOC_USP_EN ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sirfsoc_usp_hwinit(struct sirfsoc_spi *sspi)
{

 writel(readl(sspi->base + sspi->regs->usp_mode1) &
  ~SIRFSOC_USP_EN, sspi->base + sspi->regs->usp_mode1);
 writel(readl(sspi->base + sspi->regs->usp_mode1) |
  SIRFSOC_USP_EN, sspi->base + sspi->regs->usp_mode1);
}
