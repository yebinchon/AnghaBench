
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sifive_serial_port {unsigned int baud_rate; } ;


 int __ssp_update_div (struct sifive_serial_port*) ;

__attribute__((used)) static void __ssp_update_baud_rate(struct sifive_serial_port *ssp,
       unsigned int rate)
{
 if (ssp->baud_rate == rate)
  return;

 ssp->baud_rate = rate;
 __ssp_update_div(ssp);
}
