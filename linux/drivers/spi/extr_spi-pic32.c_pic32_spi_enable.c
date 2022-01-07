
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pic32_spi {TYPE_1__* regs; } ;
struct TYPE_2__ {int ctrl_set; } ;


 int CTRL_ON ;
 int CTRL_SIDL ;
 int writel (int,int *) ;

__attribute__((used)) static inline void pic32_spi_enable(struct pic32_spi *pic32s)
{
 writel(CTRL_ON | CTRL_SIDL, &pic32s->regs->ctrl_set);
}
