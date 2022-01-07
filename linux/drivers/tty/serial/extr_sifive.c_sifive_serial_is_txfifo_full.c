
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sifive_serial_port {int dummy; } ;


 int SIFIVE_SERIAL_TXDATA_FULL_MASK ;
 int SIFIVE_SERIAL_TXDATA_OFFS ;
 int __ssp_readl (struct sifive_serial_port*,int ) ;

__attribute__((used)) static int sifive_serial_is_txfifo_full(struct sifive_serial_port *ssp)
{
 return __ssp_readl(ssp, SIFIVE_SERIAL_TXDATA_OFFS) &
  SIFIVE_SERIAL_TXDATA_FULL_MASK;
}
