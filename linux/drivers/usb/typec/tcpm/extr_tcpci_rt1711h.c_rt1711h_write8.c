
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int regmap; } ;
struct rt1711h_chip {TYPE_1__ data; } ;


 int regmap_raw_write (int ,unsigned int,int *,int) ;

__attribute__((used)) static int rt1711h_write8(struct rt1711h_chip *chip, unsigned int reg, u8 val)
{
 return regmap_raw_write(chip->data.regmap, reg, &val, sizeof(u8));
}
