
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ membase; } ;
struct lpuart_port {TYPE_1__ port; } ;


 scalar_t__ UARTCR2 ;
 unsigned char UARTCR2_RE ;
 unsigned char UARTCR2_RIE ;
 unsigned char UARTCR2_TE ;
 int lpuart_setup_watermark (struct lpuart_port*) ;
 unsigned char readb (scalar_t__) ;
 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static void lpuart_setup_watermark_enable(struct lpuart_port *sport)
{
 unsigned char cr2;

 lpuart_setup_watermark(sport);

 cr2 = readb(sport->port.membase + UARTCR2);
 cr2 |= UARTCR2_RIE | UARTCR2_RE | UARTCR2_TE;
 writeb(cr2, sport->port.membase + UARTCR2);
}
