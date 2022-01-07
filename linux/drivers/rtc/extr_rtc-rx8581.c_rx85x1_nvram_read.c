
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx8581 {int regmap; } ;


 int RX8581_REG_RAM ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int rx85x1_nvram_read(void *priv, unsigned int offset, void *val,
        size_t bytes)
{
 struct rx8581 *rx8581 = priv;
 unsigned int tmp_val;
 int ret;

 ret = regmap_read(rx8581->regmap, RX8581_REG_RAM, &tmp_val);
 (*(unsigned char *)val) = (unsigned char) tmp_val;

 return ret;
}
