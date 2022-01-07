
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct regmap {int dummy; } ;
struct max17042_chip {TYPE_2__* pdata; struct regmap* regmap; } ;
struct TYPE_4__ {TYPE_1__* config_data; } ;
struct TYPE_3__ {int * cell_char_tbl; } ;


 int regmap_write (struct regmap*,scalar_t__,int ) ;

__attribute__((used)) static inline void max17042_write_model_data(struct max17042_chip *chip,
     u8 addr, int size)
{
 struct regmap *map = chip->regmap;
 int i;

 for (i = 0; i < size; i++)
  regmap_write(map, addr + i,
   chip->pdata->config_data->cell_char_tbl[i]);
}
