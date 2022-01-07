
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rspi_data {scalar_t__ byte_access; } ;


 int RSPI_SPDR ;
 int rspi_write16 (struct rspi_data const*,int ,int ) ;
 int rspi_write8 (struct rspi_data const*,int ,int ) ;

__attribute__((used)) static void rspi_write_data(const struct rspi_data *rspi, u16 data)
{
 if (rspi->byte_access)
  rspi_write8(rspi, data, RSPI_SPDR);
 else
  rspi_write16(rspi, data, RSPI_SPDR);
}
