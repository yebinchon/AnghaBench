
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 scalar_t__ DS3232_REG_SRAM_START ;
 int regmap_bulk_write (struct regmap*,scalar_t__,void*,size_t) ;

__attribute__((used)) static int ds3232_nvmem_write(void *priv, unsigned int offset, void *val,
         size_t bytes)
{
 struct regmap *ds3232_regmap = (struct regmap *)priv;

 return regmap_bulk_write(ds3232_regmap, DS3232_REG_SRAM_START + offset,
     val, bytes);
}
