
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hspi_priv {scalar_t__ addr; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static u32 hspi_read(struct hspi_priv *hspi, int reg)
{
 return ioread32(hspi->addr + reg);
}
