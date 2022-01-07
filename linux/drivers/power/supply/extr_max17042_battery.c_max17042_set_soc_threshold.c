
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct regmap {int dummy; } ;
struct max17042_chip {struct regmap* regmap; } ;


 int MAX17042_RepSOC ;
 int MAX17042_SALRT_Th ;
 int regmap_read (struct regmap*,int ,int*) ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static void max17042_set_soc_threshold(struct max17042_chip *chip, u16 off)
{
 struct regmap *map = chip->regmap;
 u32 soc, soc_tr;




 regmap_read(map, MAX17042_RepSOC, &soc);
 soc >>= 8;
 soc_tr = (soc + off) << 8;
 soc_tr |= (soc - off);
 regmap_write(map, MAX17042_SALRT_Th, soc_tr);
}
