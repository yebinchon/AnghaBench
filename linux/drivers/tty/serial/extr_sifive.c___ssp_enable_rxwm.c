
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sifive_serial_port {int ier; } ;


 int SIFIVE_SERIAL_IE_OFFS ;
 int SIFIVE_SERIAL_IE_RXWM_MASK ;
 int __ssp_writel (int,int ,struct sifive_serial_port*) ;

__attribute__((used)) static void __ssp_enable_rxwm(struct sifive_serial_port *ssp)
{
 if (ssp->ier & SIFIVE_SERIAL_IE_RXWM_MASK)
  return;

 ssp->ier |= SIFIVE_SERIAL_IE_RXWM_MASK;
 __ssp_writel(ssp->ier, SIFIVE_SERIAL_IE_OFFS, ssp);
}
