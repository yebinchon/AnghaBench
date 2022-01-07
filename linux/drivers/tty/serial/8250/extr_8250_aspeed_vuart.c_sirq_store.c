
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aspeed_vuart {scalar_t__ regs; } ;
typedef int ssize_t ;


 scalar_t__ ASPEED_VUART_GCRB ;
 unsigned long ASPEED_VUART_GCRB_HOST_SIRQ_MASK ;
 unsigned long ASPEED_VUART_GCRB_HOST_SIRQ_SHIFT ;
 struct aspeed_vuart* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 unsigned long readb (scalar_t__) ;
 int writeb (unsigned long,scalar_t__) ;

__attribute__((used)) static ssize_t sirq_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct aspeed_vuart *vuart = dev_get_drvdata(dev);
 unsigned long val;
 int err;
 u8 reg;

 err = kstrtoul(buf, 0, &val);
 if (err)
  return err;

 val <<= ASPEED_VUART_GCRB_HOST_SIRQ_SHIFT;
 val &= ASPEED_VUART_GCRB_HOST_SIRQ_MASK;

 reg = readb(vuart->regs + ASPEED_VUART_GCRB);
 reg &= ~ASPEED_VUART_GCRB_HOST_SIRQ_MASK;
 reg |= val;
 writeb(reg, vuart->regs + ASPEED_VUART_GCRB);

 return count;
}
