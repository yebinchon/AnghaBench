
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct device {int dummy; } ;
typedef int data ;


 int MCP795_LP_BIT ;
 int MCP795_REG_MONTH ;
 int MCP795_REG_SECONDS ;
 int bin2bcd (int) ;
 int dev_dbg (struct device*,char*,struct rtc_time*) ;
 int mcp795_rtcc_read (struct device*,int ,int*,int) ;
 int mcp795_rtcc_write (struct device*,int ,int*,int) ;
 int mcp795_start_oscillator (struct device*,int*) ;
 int mcp795_stop_oscillator (struct device*,int*) ;

__attribute__((used)) static int mcp795_set_time(struct device *dev, struct rtc_time *tim)
{
 int ret;
 u8 data[7];
 bool extosc;


 ret = mcp795_stop_oscillator(dev, &extosc);
 if (ret)
  return ret;


 ret = mcp795_rtcc_read(dev, MCP795_REG_SECONDS, data, sizeof(data));

 if (ret)
  return ret;

 data[0] = (data[0] & 0x80) | bin2bcd(tim->tm_sec);
 data[1] = (data[1] & 0x80) | bin2bcd(tim->tm_min);
 data[2] = bin2bcd(tim->tm_hour);
 data[3] = (data[3] & 0xF8) | bin2bcd(tim->tm_wday + 1);
 data[4] = bin2bcd(tim->tm_mday);
 data[5] = (data[5] & MCP795_LP_BIT) | bin2bcd(tim->tm_mon + 1);

 if (tim->tm_year > 100)
  tim->tm_year -= 100;

 data[6] = bin2bcd(tim->tm_year);





 ret = mcp795_rtcc_write(dev, MCP795_REG_SECONDS, data, 5);
 if (ret)
  return ret;

 ret = mcp795_rtcc_write(dev, MCP795_REG_MONTH, &data[5], 2);
 if (ret)
  return ret;





 ret = mcp795_start_oscillator(dev, extosc ? &extosc : ((void*)0));
 if (ret)
  return ret;

 dev_dbg(dev, "Set mcp795: %ptR\n", tim);

 return 0;
}
