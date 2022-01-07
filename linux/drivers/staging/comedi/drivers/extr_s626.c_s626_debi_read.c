
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct comedi_device {scalar_t__ mmio; } ;


 int S626_DEBI_CMD_RDWORD ;
 scalar_t__ S626_P_DEBIAD ;
 scalar_t__ S626_P_DEBICMD ;
 int readl (scalar_t__) ;
 int s626_debi_transfer (struct comedi_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static u16 s626_debi_read(struct comedi_device *dev, u16 addr)
{

 writel(S626_DEBI_CMD_RDWORD | addr, dev->mmio + S626_P_DEBICMD);


 s626_debi_transfer(dev);

 return readl(dev->mmio + S626_P_DEBIAD);
}
