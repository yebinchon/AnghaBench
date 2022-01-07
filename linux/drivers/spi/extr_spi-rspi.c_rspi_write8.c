
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct rspi_data {scalar_t__ addr; } ;


 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void rspi_write8(const struct rspi_data *rspi, u8 data, u16 offset)
{
 iowrite8(data, rspi->addr + offset);
}
