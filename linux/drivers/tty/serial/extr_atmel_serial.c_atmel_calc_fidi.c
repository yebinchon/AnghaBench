
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef unsigned int u32 ;
struct uart_port {int dummy; } ;
struct serial_iso7816 {int sc_di; scalar_t__ sc_fi; } ;


 int do_div (scalar_t__,int ) ;

__attribute__((used)) static unsigned int atmel_calc_fidi(struct uart_port *port,
        struct serial_iso7816 *iso7816conf)
{
 u64 fidi = 0;

 if (iso7816conf->sc_fi && iso7816conf->sc_di) {
  fidi = (u64)iso7816conf->sc_fi;
  do_div(fidi, iso7816conf->sc_di);
 }
 return (u32)fidi;
}
