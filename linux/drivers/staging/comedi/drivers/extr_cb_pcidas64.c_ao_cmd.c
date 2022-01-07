
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcidas64_private {int ao_dma_desc_bus_addr; scalar_t__ ao_dma_index; scalar_t__ main_iobase; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct pcidas64_private* private; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_2__ {int inttrig; struct comedi_cmd cmd; } ;


 scalar_t__ DAC_CONTROL0_REG ;
 int EBUSY ;
 int PLX_DMADPR_DESCPCI ;
 int PLX_DMADPR_TCINTR ;
 int ao_inttrig ;
 scalar_t__ external_ai_queue_in_use (struct comedi_device*) ;
 int load_first_dma_descriptor (struct comedi_device*,int ,int) ;
 int set_dac_control1_reg (struct comedi_device*,struct comedi_cmd*) ;
 int set_dac_interval_regs (struct comedi_device*,struct comedi_cmd*) ;
 int set_dac_select_reg (struct comedi_device*,struct comedi_cmd*) ;
 int warn_external_queue (struct comedi_device*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int ao_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct pcidas64_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;

 if (external_ai_queue_in_use(dev)) {
  warn_external_queue(dev);
  return -EBUSY;
 }

 writew(0x0, devpriv->main_iobase + DAC_CONTROL0_REG);

 devpriv->ao_dma_index = 0;

 set_dac_select_reg(dev, cmd);
 set_dac_interval_regs(dev, cmd);
 load_first_dma_descriptor(dev, 0, devpriv->ao_dma_desc_bus_addr |
      PLX_DMADPR_DESCPCI | PLX_DMADPR_TCINTR);

 set_dac_control1_reg(dev, cmd);
 s->async->inttrig = ao_inttrig;

 return 0;
}
