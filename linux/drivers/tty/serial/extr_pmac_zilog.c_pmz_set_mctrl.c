
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_pmac_port {unsigned char* curregs; } ;


 unsigned char DTR ;
 size_t R5 ;
 unsigned char RTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 scalar_t__ ZS_IS_CONS (struct uart_pmac_port*) ;
 scalar_t__ ZS_IS_INTMODEM (struct uart_pmac_port*) ;
 scalar_t__ ZS_IS_IRDA (struct uart_pmac_port*) ;
 scalar_t__ ZS_IS_OPEN (struct uart_pmac_port*) ;
 int pmz_debug (char*,unsigned char,unsigned char,unsigned char) ;
 struct uart_pmac_port* to_pmz (struct uart_port*) ;
 int write_zsreg (struct uart_pmac_port*,size_t,unsigned char) ;
 int zssync (struct uart_pmac_port*) ;

__attribute__((used)) static void pmz_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct uart_pmac_port *uap = to_pmz(port);
 unsigned char set_bits, clear_bits;


 if (ZS_IS_IRDA(uap))
  return;

 if (!(ZS_IS_OPEN(uap) || ZS_IS_CONS(uap)))
  return;

 set_bits = clear_bits = 0;

 if (ZS_IS_INTMODEM(uap)) {
  if (mctrl & TIOCM_RTS)
   set_bits |= RTS;
  else
   clear_bits |= RTS;
 }
 if (mctrl & TIOCM_DTR)
  set_bits |= DTR;
 else
  clear_bits |= DTR;


 uap->curregs[R5] |= set_bits;
 uap->curregs[R5] &= ~clear_bits;

 write_zsreg(uap, R5, uap->curregs[R5]);
 pmz_debug("pmz_set_mctrl: set bits: %x, clear bits: %x -> %x\n",
    set_bits, clear_bits, uap->curregs[R5]);
 zssync(uap);
}
