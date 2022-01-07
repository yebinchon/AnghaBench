
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct comedi_device {scalar_t__ mmio; } ;


 int S626_DEBI_CMD_WRWORD ;
 scalar_t__ S626_P_DEBIAD ;
 scalar_t__ S626_P_DEBICMD ;
 int s626_debi_transfer (struct comedi_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s626_debi_write(struct comedi_device *dev, u16 addr,
       u16 wdata)
{

 writel(S626_DEBI_CMD_WRWORD | addr, dev->mmio + S626_P_DEBICMD);
 writel(wdata, dev->mmio + S626_P_DEBIAD);


 s626_debi_transfer(dev);
}
