
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp23s08 {unsigned int reg_shift; int regmap; } ;


 int regmap_read (int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int mcp_read(struct mcp23s08 *mcp, unsigned int reg, unsigned int *val)
{
 return regmap_read(mcp->regmap, reg << mcp->reg_shift, val);
}
