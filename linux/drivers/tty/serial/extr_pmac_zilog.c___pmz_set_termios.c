
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_pmac_port {int* curregs; int flags; int port; int termios_cache; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int CTSIE ;
 int DCDIE ;
 int PMACZILOG_FLAG_MODEM_STATUS ;
 size_t R15 ;
 int SYNCIE ;
 scalar_t__ UART_ENABLE_MS (int *,int ) ;
 scalar_t__ ZS_IS_IRDA (struct uart_pmac_port*) ;
 int memcpy (int *,struct ktermios*,int) ;
 int pmz_convert_to_zs (struct uart_pmac_port*,int ,int ,unsigned long) ;
 int pmz_debug (char*,...) ;
 int pmz_irda_setup (struct uart_pmac_port*,unsigned long*) ;
 int pmz_load_zsregs (struct uart_pmac_port*,int*) ;
 int pmz_maybe_update_regs (struct uart_pmac_port*) ;
 struct uart_pmac_port* to_pmz (struct uart_port*) ;
 unsigned long uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ;
 int uart_update_timeout (struct uart_port*,int ,unsigned long) ;
 int zssync (struct uart_pmac_port*) ;

__attribute__((used)) static void __pmz_set_termios(struct uart_port *port, struct ktermios *termios,
         struct ktermios *old)
{
 struct uart_pmac_port *uap = to_pmz(port);
 unsigned long baud;

 pmz_debug("pmz: set_termios()\n");

 memcpy(&uap->termios_cache, termios, sizeof(struct ktermios));
 if (ZS_IS_IRDA(uap)) {

  baud = uart_get_baud_rate(port, termios, old, 1200, 4000000);
  pmz_debug("pmz: switch IRDA to %ld bauds\n", baud);

  pmz_irda_setup(uap, &baud);

  pmz_convert_to_zs(uap, termios->c_cflag, termios->c_iflag, baud);
  pmz_load_zsregs(uap, uap->curregs);
  zssync(uap);
 } else {
  baud = uart_get_baud_rate(port, termios, old, 1200, 230400);
  pmz_convert_to_zs(uap, termios->c_cflag, termios->c_iflag, baud);

  if (UART_ENABLE_MS(&uap->port, termios->c_cflag)) {
   uap->curregs[R15] |= DCDIE | SYNCIE | CTSIE;
   uap->flags |= PMACZILOG_FLAG_MODEM_STATUS;
  } else {
   uap->curregs[R15] &= ~(DCDIE | SYNCIE | CTSIE);
   uap->flags &= ~PMACZILOG_FLAG_MODEM_STATUS;
  }


  pmz_maybe_update_regs(uap);
 }
 uart_update_timeout(port, termios->c_cflag, baud);

 pmz_debug("pmz: set_termios() done.\n");
}
