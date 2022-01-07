
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int lock; } ;
struct TYPE_2__ {int size; } ;


 int SCSCR ;
 unsigned short SCSCR_TE ;
 int SCSPTR ;
 unsigned short SCSPTR_SPB2DT ;
 unsigned short SCSPTR_SPB2IO ;
 TYPE_1__* sci_getreg (struct uart_port*,int ) ;
 unsigned short serial_port_in (struct uart_port*,int ) ;
 int serial_port_out (struct uart_port*,int ,unsigned short) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sci_break_ctl(struct uart_port *port, int break_state)
{
 unsigned short scscr, scsptr;
 unsigned long flags;


 if (!sci_getreg(port, SCSPTR)->size) {




  return;
 }

 spin_lock_irqsave(&port->lock, flags);
 scsptr = serial_port_in(port, SCSPTR);
 scscr = serial_port_in(port, SCSCR);

 if (break_state == -1) {
  scsptr = (scsptr | SCSPTR_SPB2IO) & ~SCSPTR_SPB2DT;
  scscr &= ~SCSCR_TE;
 } else {
  scsptr = (scsptr | SCSPTR_SPB2DT) & ~SCSPTR_SPB2IO;
  scscr |= SCSCR_TE;
 }

 serial_port_out(port, SCSPTR, scsptr);
 serial_port_out(port, SCSCR, scscr);
 spin_unlock_irqrestore(&port->lock, flags);
}
