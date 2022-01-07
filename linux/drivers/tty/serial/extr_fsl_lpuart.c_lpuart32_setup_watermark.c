
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpuart_port {int port; } ;


 int UARTCTRL ;
 unsigned long UARTCTRL_RE ;
 unsigned long UARTCTRL_RIE ;
 unsigned long UARTCTRL_TCIE ;
 unsigned long UARTCTRL_TE ;
 unsigned long UARTCTRL_TIE ;
 int UARTFIFO ;
 unsigned long UARTFIFO_RXFE ;
 unsigned long UARTFIFO_RXFLUSH ;
 unsigned long UARTFIFO_TXFE ;
 unsigned long UARTFIFO_TXFLUSH ;
 int UARTWATER ;
 int UARTWATER_RXWATER_OFF ;
 int UARTWATER_TXWATER_OFF ;
 unsigned long lpuart32_read (int *,int ) ;
 int lpuart32_write (int *,unsigned long,int ) ;

__attribute__((used)) static void lpuart32_setup_watermark(struct lpuart_port *sport)
{
 unsigned long val, ctrl;
 unsigned long ctrl_saved;

 ctrl = lpuart32_read(&sport->port, UARTCTRL);
 ctrl_saved = ctrl;
 ctrl &= ~(UARTCTRL_TIE | UARTCTRL_TCIE | UARTCTRL_TE |
   UARTCTRL_RIE | UARTCTRL_RE);
 lpuart32_write(&sport->port, ctrl, UARTCTRL);


 val = lpuart32_read(&sport->port, UARTFIFO);
 val |= UARTFIFO_TXFE | UARTFIFO_RXFE;
 val |= UARTFIFO_TXFLUSH | UARTFIFO_RXFLUSH;
 lpuart32_write(&sport->port, val, UARTFIFO);


 val = (0x1 << UARTWATER_RXWATER_OFF) | (0x0 << UARTWATER_TXWATER_OFF);
 lpuart32_write(&sport->port, val, UARTWATER);


 lpuart32_write(&sport->port, ctrl_saved, UARTCTRL);
}
