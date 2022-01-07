
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uniphier_tm_dev {TYPE_1__* data; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {scalar_t__ map_base; } ;


 scalar_t__ TMOD ;
 scalar_t__ TMOD_WIDTH ;
 int regmap_read (struct regmap*,scalar_t__,int *) ;
 int sign_extend32 (int ,scalar_t__) ;

__attribute__((used)) static int uniphier_tm_get_temp(void *data, int *out_temp)
{
 struct uniphier_tm_dev *tdev = data;
 struct regmap *map = tdev->regmap;
 int ret;
 u32 temp;

 ret = regmap_read(map, tdev->data->map_base + TMOD, &temp);
 if (ret)
  return ret;


 *out_temp = sign_extend32(temp, TMOD_WIDTH - 1) * 1000;

 return 0;
}
