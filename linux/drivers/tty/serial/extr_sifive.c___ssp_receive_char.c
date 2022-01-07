
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef char u32 ;
struct sifive_serial_port {int dummy; } ;


 char SIFIVE_SERIAL_RXDATA_DATA_MASK ;
 char SIFIVE_SERIAL_RXDATA_DATA_SHIFT ;
 char SIFIVE_SERIAL_RXDATA_EMPTY_MASK ;
 char SIFIVE_SERIAL_RXDATA_EMPTY_SHIFT ;
 int SIFIVE_SERIAL_RXDATA_OFFS ;
 int WARN_ON (int) ;
 char __ssp_readl (struct sifive_serial_port*,int ) ;

__attribute__((used)) static char __ssp_receive_char(struct sifive_serial_port *ssp, char *is_empty)
{
 u32 v;
 u8 ch;

 v = __ssp_readl(ssp, SIFIVE_SERIAL_RXDATA_OFFS);

 if (!is_empty)
  WARN_ON(1);
 else
  *is_empty = (v & SIFIVE_SERIAL_RXDATA_EMPTY_MASK) >>
   SIFIVE_SERIAL_RXDATA_EMPTY_SHIFT;

 ch = (v & SIFIVE_SERIAL_RXDATA_DATA_MASK) >>
  SIFIVE_SERIAL_RXDATA_DATA_SHIFT;

 return ch;
}
