
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct rspi_data {scalar_t__ addr; } ;


 int ioread8 (scalar_t__) ;

__attribute__((used)) static u8 rspi_read8(const struct rspi_data *rspi, u16 offset)
{
 return ioread8(rspi->addr + offset);
}
