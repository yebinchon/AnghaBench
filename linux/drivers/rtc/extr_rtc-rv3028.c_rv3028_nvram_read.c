
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RV3028_RAM1 ;
 int regmap_bulk_read (void*,scalar_t__,void*,size_t) ;

__attribute__((used)) static int rv3028_nvram_read(void *priv, unsigned int offset, void *val,
        size_t bytes)
{
 return regmap_bulk_read(priv, RV3028_RAM1 + offset, val, bytes);
}
