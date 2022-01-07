
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int EIO ;
 int MCP795_EXTOSC_BIT ;
 int MCP795_OSCON_BIT ;
 int MCP795_REG_CONTROL ;
 int MCP795_REG_DAY ;
 int MCP795_REG_SECONDS ;
 int MCP795_ST_BIT ;
 int mcp795_rtcc_read (struct device*,int ,int*,int) ;
 int mcp795_rtcc_set_bits (struct device*,int ,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mcp795_stop_oscillator(struct device *dev, bool *extosc)
{
 int retries = 5;
 int ret;
 u8 data;

 ret = mcp795_rtcc_set_bits(dev, MCP795_REG_SECONDS, MCP795_ST_BIT, 0);
 if (ret)
  return ret;
 ret = mcp795_rtcc_read(dev, MCP795_REG_CONTROL, &data, 1);
 if (ret)
  return ret;
 *extosc = !!(data & MCP795_EXTOSC_BIT);
 ret = mcp795_rtcc_set_bits(
    dev, MCP795_REG_CONTROL, MCP795_EXTOSC_BIT, 0);
 if (ret)
  return ret;

 do {
  usleep_range(700, 800);
  ret = mcp795_rtcc_read(dev, MCP795_REG_DAY, &data, 1);
  if (ret)
   break;
  if (!(data & MCP795_OSCON_BIT))
   break;

 } while (--retries);

 return !retries ? -EIO : ret;
}
