
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct max17042_chip {struct regmap* regmap; } ;


 int MAX17042_VFSOC ;
 int MAX17042_VFSOC0 ;
 int MAX17042_VFSOC0Enable ;
 int VFSOC0_LOCK ;
 int VFSOC0_UNLOCK ;
 int max17042_write_verify_reg (struct regmap*,int ,unsigned int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static void max17042_reset_vfsoc0_reg(struct max17042_chip *chip)
{
 unsigned int vfSoc;
 struct regmap *map = chip->regmap;

 regmap_read(map, MAX17042_VFSOC, &vfSoc);
 regmap_write(map, MAX17042_VFSOC0Enable, VFSOC0_UNLOCK);
 max17042_write_verify_reg(map, MAX17042_VFSOC0, vfSoc);
 regmap_write(map, MAX17042_VFSOC0Enable, VFSOC0_LOCK);
}
