
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sifive_serial_port {int baud_rate; int clkin_rate; } ;


 scalar_t__ DIV_ROUND_UP (int ,int ) ;
 int SIFIVE_SERIAL_DIV_OFFS ;
 int __ssp_writel (scalar_t__,int ,struct sifive_serial_port*) ;

__attribute__((used)) static void __ssp_update_div(struct sifive_serial_port *ssp)
{
 u16 div;

 div = DIV_ROUND_UP(ssp->clkin_rate, ssp->baud_rate) - 1;

 __ssp_writel(div, SIFIVE_SERIAL_DIV_OFFS, ssp);
}
