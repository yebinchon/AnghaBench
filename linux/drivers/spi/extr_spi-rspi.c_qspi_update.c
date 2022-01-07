
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rspi_data {int dummy; } ;


 int rspi_read8 (struct rspi_data const*,int) ;
 int rspi_write8 (struct rspi_data const*,int,int) ;

__attribute__((used)) static void qspi_update(const struct rspi_data *rspi, u8 mask, u8 val, u8 reg)
{
 u8 data;

 data = rspi_read8(rspi, reg);
 data &= ~mask;
 data |= (val & mask);
 rspi_write8(rspi, data, reg);
}
