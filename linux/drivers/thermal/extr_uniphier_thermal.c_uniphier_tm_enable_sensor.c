
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct uniphier_tm_dev {TYPE_1__* data; scalar_t__* alert_en; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {scalar_t__ block_base; scalar_t__ map_base; } ;


 int ALERT_CH_NUM ;
 scalar_t__ PMALERTINTCTL ;
 int PMALERTINTCTL_EN (int) ;
 int PMALERTINTCTL_MASK ;
 scalar_t__ PVTCTLEN ;
 int PVTCTLEN_EN ;
 int regmap_write_bits (struct regmap*,scalar_t__,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void uniphier_tm_enable_sensor(struct uniphier_tm_dev *tdev)
{
 struct regmap *map = tdev->regmap;
 int i;
 u32 bits = 0;

 for (i = 0; i < ALERT_CH_NUM; i++)
  if (tdev->alert_en[i])
   bits |= PMALERTINTCTL_EN(i);


 regmap_write_bits(map, tdev->data->map_base + PMALERTINTCTL,
     PMALERTINTCTL_MASK, bits);


 regmap_write_bits(map, tdev->data->block_base + PVTCTLEN,
     PVTCTLEN_EN, PVTCTLEN_EN);

 usleep_range(700, 1500);
}
