
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pic32_spi {int flags; TYPE_1__* regs; int fifo_n_byte; int fifo_n_elm; int tx_fifo; int rx_fifo; } ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;
struct TYPE_2__ {int ctrl; } ;


 int CTRL_BPW_MASK ;
 int CTRL_BPW_SHIFT ;
 int DIV_ROUND_UP (int ,int) ;
 int DMA_SLAVE_BUSWIDTH_1_BYTE ;
 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int EINVAL ;
 int PIC32F_DMA_PREP ;
 int PIC32_BPW_16 ;
 int PIC32_BPW_32 ;
 int PIC32_BPW_8 ;
 int pic32_spi_dma_config (struct pic32_spi*,int) ;
 int pic32_spi_rx_byte ;
 int pic32_spi_rx_dword ;
 int pic32_spi_rx_word ;
 int pic32_spi_tx_byte ;
 int pic32_spi_tx_dword ;
 int pic32_spi_tx_word ;
 int readl (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int writel (int,int *) ;

__attribute__((used)) static int pic32_spi_set_word_size(struct pic32_spi *pic32s, u8 bits_per_word)
{
 enum dma_slave_buswidth dmawidth;
 u32 buswidth, v;

 switch (bits_per_word) {
 case 8:
  pic32s->rx_fifo = pic32_spi_rx_byte;
  pic32s->tx_fifo = pic32_spi_tx_byte;
  buswidth = PIC32_BPW_8;
  dmawidth = DMA_SLAVE_BUSWIDTH_1_BYTE;
  break;
 case 16:
  pic32s->rx_fifo = pic32_spi_rx_word;
  pic32s->tx_fifo = pic32_spi_tx_word;
  buswidth = PIC32_BPW_16;
  dmawidth = DMA_SLAVE_BUSWIDTH_2_BYTES;
  break;
 case 32:
  pic32s->rx_fifo = pic32_spi_rx_dword;
  pic32s->tx_fifo = pic32_spi_tx_dword;
  buswidth = PIC32_BPW_32;
  dmawidth = DMA_SLAVE_BUSWIDTH_4_BYTES;
  break;
 default:

  return -EINVAL;
 }


 pic32s->fifo_n_elm = DIV_ROUND_UP(pic32s->fifo_n_byte,
       bits_per_word / 8);

 v = readl(&pic32s->regs->ctrl);
 v &= ~(CTRL_BPW_MASK << CTRL_BPW_SHIFT);
 v |= buswidth << CTRL_BPW_SHIFT;
 writel(v, &pic32s->regs->ctrl);


 if (test_bit(PIC32F_DMA_PREP, &pic32s->flags))
  pic32_spi_dma_config(pic32s, dmawidth);

 return 0;
}
