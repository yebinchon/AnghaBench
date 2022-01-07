
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u32 ;
struct sifive_serial_port {int dummy; } ;


 char SIFIVE_SERIAL_TXCTRL_NSTOP_MASK ;
 char SIFIVE_SERIAL_TXCTRL_NSTOP_SHIFT ;
 int SIFIVE_SERIAL_TXCTRL_OFFS ;
 int WARN_ON (int) ;
 char __ssp_readl (struct sifive_serial_port*,int ) ;
 int __ssp_writel (char,int ,struct sifive_serial_port*) ;

__attribute__((used)) static void __ssp_set_stop_bits(struct sifive_serial_port *ssp, char nstop)
{
 u32 v;

 if (nstop < 1 || nstop > 2) {
  WARN_ON(1);
  return;
 }

 v = __ssp_readl(ssp, SIFIVE_SERIAL_TXCTRL_OFFS);
 v &= ~SIFIVE_SERIAL_TXCTRL_NSTOP_MASK;
 v |= (nstop - 1) << SIFIVE_SERIAL_TXCTRL_NSTOP_SHIFT;
 __ssp_writel(v, SIFIVE_SERIAL_TXCTRL_OFFS, ssp);
}
