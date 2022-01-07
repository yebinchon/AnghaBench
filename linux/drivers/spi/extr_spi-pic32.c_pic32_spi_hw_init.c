
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pic32_spi {int fifo_n_byte; TYPE_1__* regs; } ;
struct TYPE_2__ {int ctrl2_set; int ctrl; } ;


 int CTRL2_FRM_ERR_EN ;
 int CTRL2_RX_OV_EN ;
 int CTRL2_TX_UR_EN ;
 int CTRL_ENHBUF ;
 int CTRL_FRMEN ;
 int CTRL_MCLKSEL ;
 int CTRL_MSSEN ;
 int CTRL_MSTEN ;
 int CTRL_RX_INT_SHIFT ;
 int CTRL_TX_INT_SHIFT ;
 int RX_FIFO_NOT_EMPTY ;
 int TX_FIFO_HALF_EMPTY ;
 int pic32_spi_disable (struct pic32_spi*) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void pic32_spi_hw_init(struct pic32_spi *pic32s)
{
 u32 ctrl;


 pic32_spi_disable(pic32s);

 ctrl = readl(&pic32s->regs->ctrl);

 ctrl |= CTRL_ENHBUF;
 pic32s->fifo_n_byte = 16;


 ctrl &= ~CTRL_FRMEN;


 ctrl |= CTRL_MSTEN;


 ctrl &= ~(0x3 << CTRL_TX_INT_SHIFT);
 ctrl |= (TX_FIFO_HALF_EMPTY << CTRL_TX_INT_SHIFT);


 ctrl &= ~(0x3 << CTRL_RX_INT_SHIFT);
 ctrl |= (RX_FIFO_NOT_EMPTY << CTRL_RX_INT_SHIFT);


 ctrl &= ~CTRL_MCLKSEL;


 ctrl &= ~CTRL_MSSEN;

 writel(ctrl, &pic32s->regs->ctrl);


 ctrl = CTRL2_TX_UR_EN | CTRL2_RX_OV_EN | CTRL2_FRM_ERR_EN;
 writel(ctrl, &pic32s->regs->ctrl2_set);
}
