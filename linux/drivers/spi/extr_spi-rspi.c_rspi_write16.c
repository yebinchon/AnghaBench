
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct rspi_data {scalar_t__ addr; } ;


 int iowrite16 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void rspi_write16(const struct rspi_data *rspi, u16 data, u16 offset)
{
 iowrite16(data, rspi->addr + offset);
}
