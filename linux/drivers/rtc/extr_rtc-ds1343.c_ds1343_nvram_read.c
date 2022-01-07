
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds1343_priv {int map; } ;


 scalar_t__ DS1343_NVRAM ;
 int regmap_bulk_read (int ,scalar_t__,void*,size_t) ;

__attribute__((used)) static int ds1343_nvram_read(void *priv, unsigned int off, void *val,
        size_t bytes)
{
 struct ds1343_priv *ds1343 = priv;

 return regmap_bulk_read(ds1343->map, DS1343_NVRAM + off, val, bytes);
}
