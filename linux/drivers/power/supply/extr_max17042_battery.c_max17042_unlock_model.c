
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct max17042_chip {struct regmap* regmap; } ;


 int MAX17042_MLOCKReg1 ;
 int MAX17042_MLOCKReg2 ;
 int MODEL_UNLOCK1 ;
 int MODEL_UNLOCK2 ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static inline void max17042_unlock_model(struct max17042_chip *chip)
{
 struct regmap *map = chip->regmap;

 regmap_write(map, MAX17042_MLOCKReg1, MODEL_UNLOCK1);
 regmap_write(map, MAX17042_MLOCKReg2, MODEL_UNLOCK2);
}
