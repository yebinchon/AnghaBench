
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx8581 {int regmap; } ;


 int RX8581_REG_RAM ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int rx85x1_nvram_write(void *priv, unsigned int offset, void *val,
         size_t bytes)
{
 struct rx8581 *rx8581 = priv;
 unsigned char tmp_val;

 tmp_val = *((unsigned char *)val);
 return regmap_write(rx8581->regmap, RX8581_REG_RAM,
    (unsigned int)tmp_val);
}
