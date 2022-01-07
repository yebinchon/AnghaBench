
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_pmac_port {int* curregs; } ;


 int EXT_INT_ENAB ;
 int INT_ALL_Rx ;
 int R1 ;
 int RxINT_MASK ;
 int TxINT_ENAB ;
 int ZS_IS_EXTCLK (struct uart_pmac_port*) ;
 int write_zsreg (struct uart_pmac_port*,int ,int) ;

__attribute__((used)) static void pmz_interrupt_control(struct uart_pmac_port *uap, int enable)
{
 if (enable) {
  uap->curregs[1] |= INT_ALL_Rx | TxINT_ENAB;
  if (!ZS_IS_EXTCLK(uap))
   uap->curregs[1] |= EXT_INT_ENAB;
 } else {
  uap->curregs[1] &= ~(EXT_INT_ENAB | TxINT_ENAB | RxINT_MASK);
 }
 write_zsreg(uap, R1, uap->curregs[1]);
}
