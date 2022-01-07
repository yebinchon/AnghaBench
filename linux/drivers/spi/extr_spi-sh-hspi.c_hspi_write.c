
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hspi_priv {scalar_t__ addr; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void hspi_write(struct hspi_priv *hspi, int reg, u32 val)
{
 iowrite32(val, hspi->addr + reg);
}
