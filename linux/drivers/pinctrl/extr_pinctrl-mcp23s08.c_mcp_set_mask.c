
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mcp23s08 {unsigned int reg_shift; int regmap; } ;


 int regmap_update_bits (int ,unsigned int,unsigned int,int) ;

__attribute__((used)) static int mcp_set_mask(struct mcp23s08 *mcp, unsigned int reg,
         unsigned int mask, bool enabled)
{
 u16 val = enabled ? 0xffff : 0x0000;
 return regmap_update_bits(mcp->regmap, reg << mcp->reg_shift,
      mask, val);
}
