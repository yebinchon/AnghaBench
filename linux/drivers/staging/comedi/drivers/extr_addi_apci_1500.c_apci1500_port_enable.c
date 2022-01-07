
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 unsigned int Z8536_CFG_CTRL_PAE ;
 unsigned int Z8536_CFG_CTRL_PBE ;
 int Z8536_CFG_CTRL_REG ;
 unsigned int z8536_read (struct comedi_device*,int ) ;
 int z8536_write (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static void apci1500_port_enable(struct comedi_device *dev, bool enable)
{
 unsigned int cfg;

 cfg = z8536_read(dev, Z8536_CFG_CTRL_REG);
 if (enable)
  cfg |= (Z8536_CFG_CTRL_PAE | Z8536_CFG_CTRL_PBE);
 else
  cfg &= ~(Z8536_CFG_CTRL_PAE | Z8536_CFG_CTRL_PBE);
 z8536_write(dev, cfg, Z8536_CFG_CTRL_REG);
}
