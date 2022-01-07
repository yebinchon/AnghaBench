
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rspi_data {int dummy; } ;


 int RSPI_SPSR ;
 int SPSR_OVRF ;
 int SPSR_SPRF ;
 int rspi_read8 (struct rspi_data const*,int ) ;
 int rspi_read_data (struct rspi_data const*) ;
 int rspi_write8 (struct rspi_data const*,int,int ) ;

__attribute__((used)) static void rspi_receive_init(const struct rspi_data *rspi)
{
 u8 spsr;

 spsr = rspi_read8(rspi, RSPI_SPSR);
 if (spsr & SPSR_SPRF)
  rspi_read_data(rspi);
 if (spsr & SPSR_OVRF)
  rspi_write8(rspi, rspi_read8(rspi, RSPI_SPSR) & ~SPSR_OVRF,
       RSPI_SPSR);
}
