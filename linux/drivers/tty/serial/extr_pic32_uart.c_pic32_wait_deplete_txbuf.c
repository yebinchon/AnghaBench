
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_sport {int dummy; } ;


 int PIC32_UART_STA ;
 int PIC32_UART_STA_TRMT ;
 int pic32_uart_readl (struct pic32_sport*,int ) ;
 int udelay (int) ;

__attribute__((used)) static inline void pic32_wait_deplete_txbuf(struct pic32_sport *sport)
{

 while (!(pic32_uart_readl(sport, PIC32_UART_STA) & PIC32_UART_STA_TRMT))
  udelay(1);
}
