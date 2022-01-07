
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 unsigned int Z8536_CMD_CLR_IP_IUS ;
 unsigned int Z8536_STAT_IE_IP ;
 unsigned int z8536_read (struct comedi_device*,unsigned int) ;
 int z8536_write (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static bool apci1500_ack_irq(struct comedi_device *dev,
        unsigned int reg)
{
 unsigned int val;

 val = z8536_read(dev, reg);
 if ((val & Z8536_STAT_IE_IP) == Z8536_STAT_IE_IP) {
  val &= 0x0f;
  val |= Z8536_CMD_CLR_IP_IUS;
  z8536_write(dev, val, reg);

  return 1;
 }
 return 0;
}
