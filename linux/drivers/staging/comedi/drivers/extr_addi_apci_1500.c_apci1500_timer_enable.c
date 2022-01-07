
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 unsigned int Z8536_CFG_CTRL_CT1E ;
 unsigned int Z8536_CFG_CTRL_CT2E ;
 unsigned int Z8536_CFG_CTRL_PCE_CT3E ;
 int Z8536_CFG_CTRL_REG ;
 int Z8536_CT_CMDSTAT_REG (unsigned int) ;
 unsigned int z8536_read (struct comedi_device*,int ) ;
 int z8536_write (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static void apci1500_timer_enable(struct comedi_device *dev,
      unsigned int chan, bool enable)
{
 unsigned int bit;
 unsigned int cfg;

 if (chan == 0)
  bit = Z8536_CFG_CTRL_CT1E;
 else if (chan == 1)
  bit = Z8536_CFG_CTRL_CT2E;
 else
  bit = Z8536_CFG_CTRL_PCE_CT3E;

 cfg = z8536_read(dev, Z8536_CFG_CTRL_REG);
 if (enable) {
  cfg |= bit;
 } else {
  cfg &= ~bit;
  z8536_write(dev, 0x00, Z8536_CT_CMDSTAT_REG(chan));
 }
 z8536_write(dev, cfg, Z8536_CFG_CTRL_REG);
}
