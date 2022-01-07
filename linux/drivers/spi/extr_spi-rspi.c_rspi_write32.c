
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct rspi_data {scalar_t__ addr; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void rspi_write32(const struct rspi_data *rspi, u32 data, u16 offset)
{
 iowrite32(data, rspi->addr + offset);
}
