
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_tm_dev {TYPE_1__* data; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {scalar_t__ block_base; scalar_t__ map_base; } ;


 scalar_t__ PMALERTINTCTL ;
 int PMALERTINTCTL_MASK ;
 scalar_t__ PVTCTLEN ;
 int PVTCTLEN_EN ;
 int regmap_write_bits (struct regmap*,scalar_t__,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void uniphier_tm_disable_sensor(struct uniphier_tm_dev *tdev)
{
 struct regmap *map = tdev->regmap;


 regmap_write_bits(map, tdev->data->map_base + PMALERTINTCTL,
     PMALERTINTCTL_MASK, 0);


 regmap_write_bits(map, tdev->data->block_base + PVTCTLEN,
     PVTCTLEN_EN, 0);

 usleep_range(1000, 2000);
}
