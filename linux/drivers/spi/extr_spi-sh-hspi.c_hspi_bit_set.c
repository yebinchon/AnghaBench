
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hspi_priv {int dummy; } ;


 int hspi_read (struct hspi_priv*,int) ;
 int hspi_write (struct hspi_priv*,int,int) ;

__attribute__((used)) static void hspi_bit_set(struct hspi_priv *hspi, int reg, u32 mask, u32 set)
{
 u32 val = hspi_read(hspi, reg);

 val &= ~mask;
 val |= set & mask;

 hspi_write(hspi, reg, val);
}
