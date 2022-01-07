
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;


 int ABEOZ9_REG_CTRL_STATUS ;
 int ABEOZ9_REG_CTRL_STATUS_PON ;
 int ABEOZ9_REG_CTRL_STATUS_V1F ;
 int ABEOZ9_REG_CTRL_STATUS_V2F ;
 int regmap_update_bits (struct regmap*,int ,int,int ) ;

__attribute__((used)) static int abeoz9_reset_validity(struct regmap *regmap)
{
 return regmap_update_bits(regmap, ABEOZ9_REG_CTRL_STATUS,
      ABEOZ9_REG_CTRL_STATUS_V1F |
      ABEOZ9_REG_CTRL_STATUS_V2F |
      ABEOZ9_REG_CTRL_STATUS_PON,
      0);
}
