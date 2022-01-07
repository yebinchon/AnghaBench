
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aspeed_vuart {scalar_t__ regs; } ;
typedef int ssize_t ;


 scalar_t__ ASPEED_VUART_ADDRH ;
 scalar_t__ ASPEED_VUART_ADDRL ;
 scalar_t__ PAGE_SIZE ;
 struct aspeed_vuart* dev_get_drvdata (struct device*) ;
 int readb (scalar_t__) ;
 int snprintf (char*,scalar_t__,char*,int) ;

__attribute__((used)) static ssize_t lpc_address_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct aspeed_vuart *vuart = dev_get_drvdata(dev);
 u16 addr;

 addr = (readb(vuart->regs + ASPEED_VUART_ADDRH) << 8) |
  (readb(vuart->regs + ASPEED_VUART_ADDRL));

 return snprintf(buf, PAGE_SIZE - 1, "0x%x\n", addr);
}
