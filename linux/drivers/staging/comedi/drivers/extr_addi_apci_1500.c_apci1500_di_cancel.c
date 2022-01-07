
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int Z8536_CMD_CLR_IE ;
 int Z8536_INT_CTRL_REG ;
 int Z8536_PA_CMDSTAT_REG ;
 int Z8536_PB_CMDSTAT_REG ;
 int apci1500_ack_irq (struct comedi_device*,int ) ;
 int apci1500_port_enable (struct comedi_device*,int) ;
 int z8536_write (struct comedi_device*,int,int ) ;

__attribute__((used)) static int apci1500_di_cancel(struct comedi_device *dev,
         struct comedi_subdevice *s)
{

 z8536_write(dev, 0x00, Z8536_INT_CTRL_REG);


 apci1500_port_enable(dev, 0);


 apci1500_ack_irq(dev, Z8536_PA_CMDSTAT_REG);
 apci1500_ack_irq(dev, Z8536_PB_CMDSTAT_REG);


 z8536_write(dev, Z8536_CMD_CLR_IE, Z8536_PA_CMDSTAT_REG);
 z8536_write(dev, Z8536_CMD_CLR_IE, Z8536_PB_CMDSTAT_REG);


 apci1500_port_enable(dev, 1);

 return 0;
}
