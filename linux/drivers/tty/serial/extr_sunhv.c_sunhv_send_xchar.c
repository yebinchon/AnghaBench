
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;


 long HV_EOK ;
 char __DISABLED_CHAR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 long sun4v_con_putchar (char) ;
 int udelay (int) ;

__attribute__((used)) static void sunhv_send_xchar(struct uart_port *port, char ch)
{
 unsigned long flags;
 int limit = 10000;

 if (ch == __DISABLED_CHAR)
  return;

 spin_lock_irqsave(&port->lock, flags);

 while (limit-- > 0) {
  long status = sun4v_con_putchar(ch);
  if (status == HV_EOK)
   break;
  udelay(1);
 }

 spin_unlock_irqrestore(&port->lock, flags);
}
