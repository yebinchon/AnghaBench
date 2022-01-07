
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct max17042_chip {struct regmap* regmap; } ;


 int MAX17042_TEMP ;
 int regmap_read (struct regmap*,int ,int *) ;
 int sign_extend32 (int ,int) ;

__attribute__((used)) static int max17042_get_temperature(struct max17042_chip *chip, int *temp)
{
 int ret;
 u32 data;
 struct regmap *map = chip->regmap;

 ret = regmap_read(map, MAX17042_TEMP, &data);
 if (ret < 0)
  return ret;

 *temp = sign_extend32(data, 15);


 *temp = *temp * 10 / 256;
 return 0;
}
