
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pic32_spi {TYPE_1__* regs; int clk; } ;
struct TYPE_2__ {int baud; } ;


 int BAUD_MASK ;
 int DIV_ROUND_CLOSEST (int ,int) ;
 int clk_get_rate (int ) ;
 int writel (int,int *) ;

__attribute__((used)) static void pic32_spi_set_clk_rate(struct pic32_spi *pic32s, u32 spi_ck)
{
 u32 div;


 div = DIV_ROUND_CLOSEST(clk_get_rate(pic32s->clk), 2 * spi_ck) - 1;

 writel(div & BAUD_MASK, &pic32s->regs->baud);
}
