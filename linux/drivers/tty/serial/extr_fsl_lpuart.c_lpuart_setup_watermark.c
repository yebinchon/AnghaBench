
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ membase; } ;
struct lpuart_port {TYPE_1__ port; } ;


 scalar_t__ UARTCFIFO ;
 unsigned char UARTCFIFO_RXFLUSH ;
 unsigned char UARTCFIFO_TXFLUSH ;
 scalar_t__ UARTCR2 ;
 unsigned char UARTCR2_RE ;
 unsigned char UARTCR2_RIE ;
 unsigned char UARTCR2_TCIE ;
 unsigned char UARTCR2_TE ;
 unsigned char UARTCR2_TIE ;
 scalar_t__ UARTDR ;
 scalar_t__ UARTPFIFO ;
 unsigned char UARTPFIFO_RXFE ;
 unsigned char UARTPFIFO_TXFE ;
 scalar_t__ UARTRWFIFO ;
 scalar_t__ UARTSFIFO ;
 unsigned char UARTSFIFO_RXUF ;
 scalar_t__ UARTSR1 ;
 int UARTSR1_RDRF ;
 scalar_t__ UARTTWFIFO ;
 int readb (scalar_t__) ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static void lpuart_setup_watermark(struct lpuart_port *sport)
{
 unsigned char val, cr2;
 unsigned char cr2_saved;

 cr2 = readb(sport->port.membase + UARTCR2);
 cr2_saved = cr2;
 cr2 &= ~(UARTCR2_TIE | UARTCR2_TCIE | UARTCR2_TE |
   UARTCR2_RIE | UARTCR2_RE);
 writeb(cr2, sport->port.membase + UARTCR2);

 val = readb(sport->port.membase + UARTPFIFO);
 writeb(val | UARTPFIFO_TXFE | UARTPFIFO_RXFE,
   sport->port.membase + UARTPFIFO);


 writeb(UARTCFIFO_TXFLUSH | UARTCFIFO_RXFLUSH,
   sport->port.membase + UARTCFIFO);


 if (readb(sport->port.membase + UARTSR1) & UARTSR1_RDRF) {
  readb(sport->port.membase + UARTDR);
  writeb(UARTSFIFO_RXUF, sport->port.membase + UARTSFIFO);
 }

 writeb(0, sport->port.membase + UARTTWFIFO);
 writeb(1, sport->port.membase + UARTRWFIFO);


 writeb(cr2_saved, sport->port.membase + UARTCR2);
}
