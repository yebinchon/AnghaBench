
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_port {int * regs; } ;
struct uart_port {int dummy; } ;


 int R5 ;
 int TxENAB ;
 struct zs_port* to_zport (struct uart_port*) ;
 int write_zsreg (struct zs_port*,int ,int ) ;

__attribute__((used)) static void zs_pm(struct uart_port *uport, unsigned int state,
    unsigned int oldstate)
{
 struct zs_port *zport = to_zport(uport);

 if (state < 3)
  zport->regs[5] |= TxENAB;
 else
  zport->regs[5] &= ~TxENAB;
 write_zsreg(zport, R5, zport->regs[5]);
}
