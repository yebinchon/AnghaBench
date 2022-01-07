
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct regmap {int dummy; } ;


 int regmap_write (struct regmap*,int ,scalar_t__) ;

__attribute__((used)) static inline void max17042_override_por(struct regmap *map,
      u8 reg, u16 value)
{
 if (value)
  regmap_write(map, reg, value);
}
