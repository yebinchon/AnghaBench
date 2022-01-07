
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp872x {int regmap; } ;


 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static inline int lp872x_write_byte(struct lp872x *lp, u8 addr, u8 data)
{
 return regmap_write(lp->regmap, addr, data);
}
