
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct rspi_data {scalar_t__ addr; } ;


 scalar_t__ ioread16 (scalar_t__) ;

__attribute__((used)) static u16 rspi_read16(const struct rspi_data *rspi, u16 offset)
{
 return ioread16(rspi->addr + offset);
}
