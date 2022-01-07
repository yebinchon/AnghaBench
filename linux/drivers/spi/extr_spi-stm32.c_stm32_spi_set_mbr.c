
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct stm32_spi {TYPE_3__* cfg; scalar_t__ base; } ;
struct TYPE_6__ {TYPE_2__* regs; } ;
struct TYPE_4__ {int mask; int shift; scalar_t__ reg; } ;
struct TYPE_5__ {TYPE_1__ br; } ;


 int readl_relaxed (scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void stm32_spi_set_mbr(struct stm32_spi *spi, u32 mbrdiv)
{
 u32 clrb = 0, setb = 0;

 clrb |= spi->cfg->regs->br.mask;
 setb |= ((u32)mbrdiv << spi->cfg->regs->br.shift) &
  spi->cfg->regs->br.mask;

 writel_relaxed((readl_relaxed(spi->base + spi->cfg->regs->br.reg) &
   ~clrb) | setb,
         spi->base + spi->cfg->regs->br.reg);
}
