
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx8581 {int regmap; } ;


 scalar_t__ RX8571_USER_RAM ;
 int regmap_bulk_read (int ,scalar_t__,void*,size_t) ;

__attribute__((used)) static int rx8571_nvram_read(void *priv, unsigned int offset, void *val,
        size_t bytes)
{
 struct rx8581 *rx8581 = priv;

 return regmap_bulk_read(rx8581->regmap, RX8571_USER_RAM + offset,
    val, bytes);
}
