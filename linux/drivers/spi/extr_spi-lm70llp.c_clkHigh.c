
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_lm70llp {int port; } ;


 int SCLK ;
 int parport_read_data (int ) ;
 int parport_write_data (int ,int) ;

__attribute__((used)) static inline void clkHigh(struct spi_lm70llp *pp)
{
 u8 data = parport_read_data(pp->port);

 parport_write_data(pp->port, data | SCLK);
}
