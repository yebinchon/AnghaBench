
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port {int lock; } ;
struct TYPE_5__ {TYPE_1__* dram; } ;
struct TYPE_4__ {int xchar; } ;


 TYPE_2__* ICOM_PORT ;
 int msleep (int) ;
 unsigned char readb (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace (TYPE_2__*,char*,char) ;
 int writeb (char,int *) ;

__attribute__((used)) static void icom_send_xchar(struct uart_port *port, char ch)
{
 unsigned char xdata;
 int index;
 unsigned long flags;

 trace(ICOM_PORT, "SEND_XCHAR", ch);


 for (index = 0; index < 10; index++) {
  spin_lock_irqsave(&port->lock, flags);
  xdata = readb(&ICOM_PORT->dram->xchar);
  if (xdata == 0x00) {
   trace(ICOM_PORT, "QUICK_WRITE", 0);
   writeb(ch, &ICOM_PORT->dram->xchar);


   xdata = readb(&ICOM_PORT->dram->xchar);
   spin_unlock_irqrestore(&port->lock, flags);
   break;
  }
  spin_unlock_irqrestore(&port->lock, flags);
  msleep(10);
 }
}
