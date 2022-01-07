
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ membase; } ;


 scalar_t__ LINCR1 ;
 unsigned long LINFLEXD_LINCR1_BF ;
 unsigned long LINFLEXD_LINCR1_INIT ;
 unsigned long LINFLEXD_LINCR1_MME ;
 unsigned long LINFLEXD_LINIER_DRIE ;
 unsigned long LINFLEXD_LINIER_DTIE ;
 unsigned long LINFLEXD_LINSR_LINS_INITMODE ;
 unsigned long LINFLEXD_LINSR_LINS_MASK ;
 unsigned long LINFLEXD_UARTCR_RXEN ;
 unsigned long LINFLEXD_UARTCR_TXEN ;
 unsigned long LINFLEXD_UARTCR_UART ;
 unsigned long LINFLEXD_UARTCR_WL0 ;
 scalar_t__ LINIER ;
 scalar_t__ LINSR ;
 scalar_t__ UARTCR ;
 unsigned long readl (scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void linflex_setup_watermark(struct uart_port *sport)
{
 unsigned long cr, ier, cr1;


 ier = readl(sport->membase + LINIER);
 ier &= ~(LINFLEXD_LINIER_DRIE | LINFLEXD_LINIER_DTIE);
 writel(ier, sport->membase + LINIER);

 cr = readl(sport->membase + UARTCR);
 cr &= ~(LINFLEXD_UARTCR_RXEN | LINFLEXD_UARTCR_TXEN);
 writel(cr, sport->membase + UARTCR);




 cr1 = LINFLEXD_LINCR1_BF | LINFLEXD_LINCR1_MME
       | LINFLEXD_LINCR1_INIT;
 writel(cr1, sport->membase + LINCR1);


 while ((readl(sport->membase + LINSR)
  & LINFLEXD_LINSR_LINS_MASK)
  != LINFLEXD_LINSR_LINS_INITMODE)
  ;
 writel(LINFLEXD_UARTCR_UART, sport->membase + UARTCR);

 cr = (LINFLEXD_UARTCR_RXEN | LINFLEXD_UARTCR_TXEN |
       LINFLEXD_UARTCR_WL0 | LINFLEXD_UARTCR_UART);

 writel(cr, sport->membase + UARTCR);

 cr1 &= ~(LINFLEXD_LINCR1_INIT);

 writel(cr1, sport->membase + LINCR1);

 ier = readl(sport->membase + LINIER);
 ier |= LINFLEXD_LINIER_DRIE;
 ier |= LINFLEXD_LINIER_DTIE;

 writel(ier, sport->membase + LINIER);
}
