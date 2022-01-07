
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int spinlock; scalar_t__ iobase; } ;


 scalar_t__ APCI1500_Z8536_CTRL_REG ;
 int Z8536_CFG_CTRL_REG ;
 int Z8536_CMD_CLR_IE ;
 int Z8536_CMD_CLR_IP_IUS ;
 int Z8536_CT_CMDSTAT_REG (int) ;
 int Z8536_INT_CTRL_REG ;
 int Z8536_PAB_MODE_PMS_DISABLE ;
 int Z8536_PAB_MODE_PTS_BIT ;
 int Z8536_PAB_MODE_SB ;
 int Z8536_PA_CMDSTAT_REG ;
 int Z8536_PA_DD_REG ;
 int Z8536_PA_MODE_REG ;
 int Z8536_PB_CMDSTAT_REG ;
 int Z8536_PB_DD_REG ;
 int Z8536_PB_DPP_REG ;
 int Z8536_PB_MODE_REG ;
 int Z8536_PC_DD_REG ;
 int Z8536_PC_DPP_REG ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int z8536_write (struct comedi_device*,int,int ) ;

__attribute__((used)) static void z8536_reset(struct comedi_device *dev)
{
 unsigned long flags;





 spin_lock_irqsave(&dev->spinlock, flags);
 inb(dev->iobase + APCI1500_Z8536_CTRL_REG);
 outb(0, dev->iobase + APCI1500_Z8536_CTRL_REG);
 inb(dev->iobase + APCI1500_Z8536_CTRL_REG);
 outb(0, dev->iobase + APCI1500_Z8536_CTRL_REG);
 outb(1, dev->iobase + APCI1500_Z8536_CTRL_REG);
 outb(0, dev->iobase + APCI1500_Z8536_CTRL_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);


 z8536_write(dev, 0x00, Z8536_CFG_CTRL_REG);





 z8536_write(dev, Z8536_PAB_MODE_PTS_BIT |
    Z8536_PAB_MODE_SB |
    Z8536_PAB_MODE_PMS_DISABLE,
      Z8536_PA_MODE_REG);
 z8536_write(dev, 0xff, Z8536_PB_DPP_REG);
 z8536_write(dev, 0xff, Z8536_PA_DD_REG);
 z8536_write(dev, Z8536_PAB_MODE_PTS_BIT |
    Z8536_PAB_MODE_SB |
    Z8536_PAB_MODE_PMS_DISABLE,
      Z8536_PB_MODE_REG);
 z8536_write(dev, 0x7f, Z8536_PB_DPP_REG);
 z8536_write(dev, 0xff, Z8536_PB_DD_REG);




 z8536_write(dev, 0x09, Z8536_PC_DPP_REG);
 z8536_write(dev, 0x0e, Z8536_PC_DD_REG);







 z8536_write(dev, Z8536_CMD_CLR_IP_IUS, Z8536_PA_CMDSTAT_REG);
 z8536_write(dev, Z8536_CMD_CLR_IE, Z8536_PA_CMDSTAT_REG);

 z8536_write(dev, Z8536_CMD_CLR_IP_IUS, Z8536_PB_CMDSTAT_REG);
 z8536_write(dev, Z8536_CMD_CLR_IE, Z8536_PB_CMDSTAT_REG);

 z8536_write(dev, Z8536_CMD_CLR_IP_IUS, Z8536_CT_CMDSTAT_REG(0));
 z8536_write(dev, Z8536_CMD_CLR_IE, Z8536_CT_CMDSTAT_REG(0));

 z8536_write(dev, Z8536_CMD_CLR_IP_IUS, Z8536_CT_CMDSTAT_REG(1));
 z8536_write(dev, Z8536_CMD_CLR_IE, Z8536_CT_CMDSTAT_REG(1));

 z8536_write(dev, Z8536_CMD_CLR_IP_IUS, Z8536_CT_CMDSTAT_REG(2));
 z8536_write(dev, Z8536_CMD_CLR_IE, Z8536_CT_CMDSTAT_REG(2));


 z8536_write(dev, 0x00, Z8536_INT_CTRL_REG);
}
