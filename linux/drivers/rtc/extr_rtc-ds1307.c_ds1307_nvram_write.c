
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1307 {size_t type; int regmap; } ;
struct chip_desc {scalar_t__ nvram_offset; } ;


 struct chip_desc* chips ;
 int regmap_bulk_write (int ,scalar_t__,void*,size_t) ;

__attribute__((used)) static int ds1307_nvram_write(void *priv, unsigned int offset, void *val,
         size_t bytes)
{
 struct ds1307 *ds1307 = priv;
 const struct chip_desc *chip = &chips[ds1307->type];

 return regmap_bulk_write(ds1307->regmap, chip->nvram_offset + offset,
     val, bytes);
}
