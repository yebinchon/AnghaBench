
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aspeed_vuart {scalar_t__ regs; } ;
typedef int ssize_t ;


 scalar_t__ ASPEED_VUART_GCRB ;
 int ASPEED_VUART_GCRB_HOST_SIRQ_MASK ;
 int ASPEED_VUART_GCRB_HOST_SIRQ_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 struct aspeed_vuart* dev_get_drvdata (struct device*) ;
 int readb (scalar_t__) ;
 int snprintf (char*,scalar_t__,char*,int) ;

__attribute__((used)) static ssize_t sirq_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct aspeed_vuart *vuart = dev_get_drvdata(dev);
 u8 reg;

 reg = readb(vuart->regs + ASPEED_VUART_GCRB);
 reg &= ASPEED_VUART_GCRB_HOST_SIRQ_MASK;
 reg >>= ASPEED_VUART_GCRB_HOST_SIRQ_SHIFT;

 return snprintf(buf, PAGE_SIZE - 1, "%u\n", reg);
}
