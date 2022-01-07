
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf2127 {int regmap; } ;


 int PCF2127_REG_RAM_ADDR_MSB ;
 int PCF2127_REG_RAM_RD_CMD ;
 int regmap_bulk_read (int ,int ,void*,size_t) ;
 int regmap_bulk_write (int ,int ,unsigned char*,int) ;

__attribute__((used)) static int pcf2127_nvmem_read(void *priv, unsigned int offset,
         void *val, size_t bytes)
{
 struct pcf2127 *pcf2127 = priv;
 int ret;
 unsigned char offsetbuf[] = { offset >> 8, offset };

 ret = regmap_bulk_write(pcf2127->regmap, PCF2127_REG_RAM_ADDR_MSB,
    offsetbuf, 2);
 if (ret)
  return ret;

 ret = regmap_bulk_read(pcf2127->regmap, PCF2127_REG_RAM_RD_CMD,
          val, bytes);

 return ret ?: bytes;
}
