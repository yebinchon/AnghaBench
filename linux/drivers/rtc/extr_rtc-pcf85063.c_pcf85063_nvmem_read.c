
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCF85063_REG_RAM ;
 int regmap_read (void*,int ,void*) ;

__attribute__((used)) static int pcf85063_nvmem_read(void *priv, unsigned int offset,
          void *val, size_t bytes)
{
 return regmap_read(priv, PCF85063_REG_RAM, val);
}
