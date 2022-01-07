
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int csr; int port; } ;
typedef TYPE_1__ avmcard ;


 int AMCC_INTCSR ;
 int AMCC_MCSR ;
 int AMCC_RXLEN ;
 int AMCC_RXPTR ;
 int AMCC_TXLEN ;
 int AMCC_TXPTR ;
 int b1dma_readl (TYPE_1__*,int ) ;
 int b1dma_writel (TYPE_1__*,int,int ) ;
 int mdelay (int) ;
 int t1inp (int ,int) ;
 int t1outp (int ,int,int) ;

__attribute__((used)) static int b1dma_detect(avmcard *card)
{
 b1dma_writel(card, 0, AMCC_MCSR);
 mdelay(10);
 b1dma_writel(card, 0x0f000000, AMCC_MCSR);
 mdelay(10);
 b1dma_writel(card, 0, AMCC_MCSR);
 mdelay(42);

 b1dma_writel(card, 0, AMCC_RXLEN);
 b1dma_writel(card, 0, AMCC_TXLEN);
 card->csr = 0x0;
 b1dma_writel(card, card->csr, AMCC_INTCSR);

 if (b1dma_readl(card, AMCC_MCSR) != 0x000000E6)
  return 1;

 b1dma_writel(card, 0xffffffff, AMCC_RXPTR);
 b1dma_writel(card, 0xffffffff, AMCC_TXPTR);
 if (b1dma_readl(card, AMCC_RXPTR) != 0xfffffffc
     || b1dma_readl(card, AMCC_TXPTR) != 0xfffffffc)
  return 2;

 b1dma_writel(card, 0x0, AMCC_RXPTR);
 b1dma_writel(card, 0x0, AMCC_TXPTR);
 if (b1dma_readl(card, AMCC_RXPTR) != 0x0
     || b1dma_readl(card, AMCC_TXPTR) != 0x0)
  return 3;

 t1outp(card->port, 0x10, 0x00);
 t1outp(card->port, 0x07, 0x00);

 t1outp(card->port, 0x02, 0x02);
 t1outp(card->port, 0x03, 0x02);

 if ((t1inp(card->port, 0x02) & 0xFE) != 0x02
     || t1inp(card->port, 0x3) != 0x03)
  return 4;

 t1outp(card->port, 0x02, 0x00);
 t1outp(card->port, 0x03, 0x00);

 if ((t1inp(card->port, 0x02) & 0xFE) != 0x00
     || t1inp(card->port, 0x3) != 0x01)
  return 5;

 return 0;
}
