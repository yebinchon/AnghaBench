
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mcp23s08 {int dummy; } ;


 int BIT (unsigned int) ;
 int mcp_set_mask (struct mcp23s08*,unsigned int,int ,int) ;

__attribute__((used)) static int mcp_set_bit(struct mcp23s08 *mcp, unsigned int reg,
         unsigned int pin, bool enabled)
{
 u16 mask = BIT(pin);
 return mcp_set_mask(mcp, reg, mask, enabled);
}
