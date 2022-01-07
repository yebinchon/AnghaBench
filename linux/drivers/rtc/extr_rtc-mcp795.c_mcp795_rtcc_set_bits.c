
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int mcp795_rtcc_read (struct device*,int,int*,int) ;
 int mcp795_rtcc_write (struct device*,int,int*,int) ;

__attribute__((used)) static int mcp795_rtcc_set_bits(struct device *dev, u8 addr, u8 mask, u8 state)
{
 int ret;
 u8 tmp;

 ret = mcp795_rtcc_read(dev, addr, &tmp, 1);
 if (ret)
  return ret;

 if ((tmp & mask) != state) {
  tmp = (tmp & ~mask) | state;
  ret = mcp795_rtcc_write(dev, addr, &tmp, 1);
 }

 return ret;
}
