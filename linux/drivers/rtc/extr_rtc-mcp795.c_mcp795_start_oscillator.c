
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int MCP795_EXTOSC_BIT ;
 int MCP795_REG_CONTROL ;
 int MCP795_REG_SECONDS ;
 int MCP795_ST_BIT ;
 int mcp795_rtcc_set_bits (struct device*,int ,int ,int ) ;

__attribute__((used)) static int mcp795_start_oscillator(struct device *dev, bool *extosc)
{
 if (extosc) {
  u8 data = *extosc ? MCP795_EXTOSC_BIT : 0;
  int ret;

  ret = mcp795_rtcc_set_bits(
   dev, MCP795_REG_CONTROL, MCP795_EXTOSC_BIT, data);
  if (ret)
   return ret;
 }
 return mcp795_rtcc_set_bits(
   dev, MCP795_REG_SECONDS, MCP795_ST_BIT, MCP795_ST_BIT);
}
