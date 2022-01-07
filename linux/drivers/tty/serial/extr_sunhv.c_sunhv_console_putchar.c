
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;


 long HV_EOK ;
 long sun4v_con_putchar (char) ;
 int udelay (int) ;

__attribute__((used)) static inline void sunhv_console_putchar(struct uart_port *port, char c)
{
 int limit = 1000000;

 while (limit-- > 0) {
  long status = sun4v_con_putchar(c);
  if (status == HV_EOK)
   break;
  udelay(1);
 }
}
