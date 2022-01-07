
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf85363 {int regmap; } ;


 scalar_t__ CTRL_RAM ;
 int regmap_bulk_write (int ,scalar_t__,void*,size_t) ;

__attribute__((used)) static int pcf85363_nvram_write(void *priv, unsigned int offset, void *val,
    size_t bytes)
{
 struct pcf85363 *pcf85363 = priv;

 return regmap_bulk_write(pcf85363->regmap, CTRL_RAM + offset,
     val, bytes);
}
