
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_spi {int dummy; } ;


 int spi_enable_chip (struct dw_spi*,int ) ;
 int spi_set_clk (struct dw_spi*,int ) ;

__attribute__((used)) static inline void spi_shutdown_chip(struct dw_spi *dws)
{
 spi_enable_chip(dws, 0);
 spi_set_clk(dws, 0);
}
