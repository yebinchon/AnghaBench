
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp872x {int regmap; } ;


 int regmap_update_bits (int ,int ,unsigned int,int ) ;

__attribute__((used)) static inline int lp872x_update_bits(struct lp872x *lp, u8 addr,
    unsigned int mask, u8 data)
{
 return regmap_update_bits(lp->regmap, addr, mask, data);
}
