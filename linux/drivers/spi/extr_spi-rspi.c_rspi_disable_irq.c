
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rspi_data {int dummy; } ;


 int RSPI_SPCR ;
 int rspi_read8 (struct rspi_data const*,int ) ;
 int rspi_write8 (struct rspi_data const*,int,int ) ;

__attribute__((used)) static void rspi_disable_irq(const struct rspi_data *rspi, u8 disable)
{
 rspi_write8(rspi, rspi_read8(rspi, RSPI_SPCR) & ~disable, RSPI_SPCR);
}
