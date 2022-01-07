
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpuart_port {int port; } ;


 int UARTCTRL ;
 int UARTCTRL_ILIE ;
 int UARTCTRL_RE ;
 int UARTCTRL_TE ;
 int lpuart32_read (int *,int ) ;
 int lpuart32_setup_watermark (struct lpuart_port*) ;
 int lpuart32_write (int *,int,int ) ;

__attribute__((used)) static void lpuart32_setup_watermark_enable(struct lpuart_port *sport)
{
 u32 temp;

 lpuart32_setup_watermark(sport);

 temp = lpuart32_read(&sport->port, UARTCTRL);
 temp |= UARTCTRL_RE | UARTCTRL_TE | UARTCTRL_ILIE;
 lpuart32_write(&sport->port, temp, UARTCTRL);
}
