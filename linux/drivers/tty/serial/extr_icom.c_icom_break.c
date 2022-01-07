
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port {int lock; } ;
struct TYPE_5__ {TYPE_1__* dram; } ;
struct TYPE_4__ {int CmdReg; } ;


 unsigned char CMD_SND_BREAK ;
 TYPE_2__* ICOM_PORT ;
 unsigned char readb (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace (TYPE_2__*,char*,int ) ;
 int writeb (unsigned char,int *) ;

__attribute__((used)) static void icom_break(struct uart_port *port, int break_state)
{
 unsigned char cmdReg;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 trace(ICOM_PORT, "BREAK", 0);
 cmdReg = readb(&ICOM_PORT->dram->CmdReg);
 if (break_state == -1) {
  writeb(cmdReg | CMD_SND_BREAK, &ICOM_PORT->dram->CmdReg);
 } else {
  writeb(cmdReg & ~CMD_SND_BREAK, &ICOM_PORT->dram->CmdReg);
 }
 spin_unlock_irqrestore(&port->lock, flags);
}
