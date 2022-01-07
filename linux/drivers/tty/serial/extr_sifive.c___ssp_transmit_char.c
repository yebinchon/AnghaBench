
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sifive_serial_port {int dummy; } ;


 int SIFIVE_SERIAL_TXDATA_OFFS ;
 int __ssp_writel (int,int ,struct sifive_serial_port*) ;

__attribute__((used)) static void __ssp_transmit_char(struct sifive_serial_port *ssp, int ch)
{
 __ssp_writel(ch, SIFIVE_SERIAL_TXDATA_OFFS, ssp);
}
