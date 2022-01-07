
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct qpnp_tm_chip {scalar_t__ base; int map; } ;


 int regmap_write (int ,scalar_t__,int ) ;

__attribute__((used)) static int qpnp_tm_write(struct qpnp_tm_chip *chip, u16 addr, u8 data)
{
 return regmap_write(chip->map, chip->base + addr, data);
}
