
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct uart_pmac_port {int * curregs; } ;


 size_t R1 ;
 int RxINT_MASK ;
 int pmz_debug (char*) ;
 int pmz_maybe_update_regs (struct uart_pmac_port*) ;
 struct uart_pmac_port* to_pmz (struct uart_port*) ;

__attribute__((used)) static void pmz_stop_rx(struct uart_port *port)
{
 struct uart_pmac_port *uap = to_pmz(port);

 pmz_debug("pmz: stop_rx()()\n");


 uap->curregs[R1] &= ~RxINT_MASK;
 pmz_maybe_update_regs(uap);

 pmz_debug("pmz: stop_rx() done.\n");
}
