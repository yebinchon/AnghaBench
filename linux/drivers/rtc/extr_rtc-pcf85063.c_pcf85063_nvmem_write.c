
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int PCF85063_REG_RAM ;
 int regmap_write (void*,int ,int ) ;

__attribute__((used)) static int pcf85063_nvmem_write(void *priv, unsigned int offset,
    void *val, size_t bytes)
{
 return regmap_write(priv, PCF85063_REG_RAM, *(u8 *)val);
}
