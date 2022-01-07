
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct uart_pmac_port {unsigned char* curregs; } ;


 size_t R5 ;
 unsigned char SND_BRK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_pmac_port* to_pmz (struct uart_port*) ;
 int write_zsreg (struct uart_pmac_port*,size_t,unsigned char) ;

__attribute__((used)) static void pmz_break_ctl(struct uart_port *port, int break_state)
{
 struct uart_pmac_port *uap = to_pmz(port);
 unsigned char set_bits, clear_bits, new_reg;
 unsigned long flags;

 set_bits = clear_bits = 0;

 if (break_state)
  set_bits |= SND_BRK;
 else
  clear_bits |= SND_BRK;

 spin_lock_irqsave(&port->lock, flags);

 new_reg = (uap->curregs[R5] | set_bits) & ~clear_bits;
 if (new_reg != uap->curregs[R5]) {
  uap->curregs[R5] = new_reg;
  write_zsreg(uap, R5, uap->curregs[R5]);
 }

 spin_unlock_irqrestore(&port->lock, flags);
}
