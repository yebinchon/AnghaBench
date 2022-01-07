
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp23s08 {int dummy; } ;


 int MCP_OLAT ;
 int mcp_set_mask (struct mcp23s08*,int ,unsigned int,int) ;

__attribute__((used)) static int __mcp23s08_set(struct mcp23s08 *mcp, unsigned mask, bool value)
{
 return mcp_set_mask(mcp, MCP_OLAT, mask, value);
}
