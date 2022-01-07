
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int MCP795_ALM0IF_BIT ;
 int MCP795_ALM0_BIT ;
 int MCP795_ALM1_BIT ;
 int MCP795_REG_ALM0_DAY ;
 int MCP795_REG_CONTROL ;
 int dev_dbg (struct device*,char*,char*) ;
 int mcp795_rtcc_set_bits (struct device*,int ,int,int) ;

__attribute__((used)) static int mcp795_update_alarm(struct device *dev, bool enable)
{
 int ret;

 dev_dbg(dev, "%s alarm\n", enable ? "Enable" : "Disable");

 if (enable) {

  ret = mcp795_rtcc_set_bits(dev, MCP795_REG_ALM0_DAY,
     MCP795_ALM0IF_BIT, 0);
  if (ret)
   return ret;

  ret = mcp795_rtcc_set_bits(dev, MCP795_REG_CONTROL,
     MCP795_ALM0_BIT, MCP795_ALM0_BIT);
 } else {

  ret = mcp795_rtcc_set_bits(dev, MCP795_REG_CONTROL,
     MCP795_ALM0_BIT | MCP795_ALM1_BIT, 0);
 }
 return ret;
}
