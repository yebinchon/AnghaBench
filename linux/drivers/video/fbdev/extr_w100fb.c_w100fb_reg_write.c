
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int printk (char*,unsigned long,unsigned long) ;
 scalar_t__ remapped_regs ;
 int sscanf (char const*,char*,unsigned long*,unsigned long*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static ssize_t w100fb_reg_write(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 unsigned long regs, param;
 sscanf(buf, "%lx %lx", &regs, &param);

 if (regs <= 0x2000) {
  printk("Write Register 0x%08lX: 0x%08lX\n", regs, param);
  writel(param, remapped_regs + regs);
 }

 return count;
}
