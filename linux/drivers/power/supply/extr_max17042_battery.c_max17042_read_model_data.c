
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct regmap {int dummy; } ;
struct max17042_chip {struct regmap* regmap; } ;


 int regmap_read (struct regmap*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static inline void max17042_read_model_data(struct max17042_chip *chip,
     u8 addr, u16 *data, int size)
{
 struct regmap *map = chip->regmap;
 int i;
 u32 tmp;

 for (i = 0; i < size; i++) {
  regmap_read(map, addr + i, &tmp);
  data[i] = (u16)tmp;
 }
}
