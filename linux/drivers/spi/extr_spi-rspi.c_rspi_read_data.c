
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rspi_data {scalar_t__ byte_access; } ;


 int RSPI_SPDR ;
 int rspi_read16 (struct rspi_data const*,int ) ;
 int rspi_read8 (struct rspi_data const*,int ) ;

__attribute__((used)) static u16 rspi_read_data(const struct rspi_data *rspi)
{
 if (rspi->byte_access)
  return rspi_read8(rspi, RSPI_SPDR);
 else
  return rspi_read16(rspi, RSPI_SPDR);
}
