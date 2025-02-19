
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;


 int rv3029_read_regs (struct device*,int,int*,int) ;
 int rv3029_write_regs (struct device*,int,int*,int) ;

__attribute__((used)) static int rv3029_update_bits(struct device *dev, u8 reg, u8 mask, u8 set)
{
 u8 buf;
 int ret;

 ret = rv3029_read_regs(dev, reg, &buf, 1);
 if (ret < 0)
  return ret;
 buf &= ~mask;
 buf |= set & mask;
 ret = rv3029_write_regs(dev, reg, &buf, 1);
 if (ret < 0)
  return ret;

 return 0;
}
