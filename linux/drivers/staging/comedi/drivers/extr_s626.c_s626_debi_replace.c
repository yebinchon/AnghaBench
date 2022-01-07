
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 unsigned int S626_DEBI_CMD_RDWORD ;
 unsigned int S626_DEBI_CMD_WRWORD ;
 scalar_t__ S626_P_DEBIAD ;
 scalar_t__ S626_P_DEBICMD ;
 unsigned int readl (scalar_t__) ;
 int s626_debi_transfer (struct comedi_device*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void s626_debi_replace(struct comedi_device *dev, unsigned int addr,
         unsigned int mask, unsigned int wdata)
{
 unsigned int val;

 addr &= 0xffff;
 writel(S626_DEBI_CMD_RDWORD | addr, dev->mmio + S626_P_DEBICMD);
 s626_debi_transfer(dev);

 writel(S626_DEBI_CMD_WRWORD | addr, dev->mmio + S626_P_DEBICMD);
 val = readl(dev->mmio + S626_P_DEBIAD);
 val &= mask;
 val |= wdata;
 writel(val & 0xffff, dev->mmio + S626_P_DEBIAD);
 s626_debi_transfer(dev);
}
