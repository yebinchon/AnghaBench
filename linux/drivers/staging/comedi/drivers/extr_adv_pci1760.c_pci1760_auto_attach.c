
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct comedi_subdevice {int n_chan; int maxdata; int state; int type; int insn_config; int subdev_flags; int insn_bits; int * range_table; } ;
struct comedi_device {struct comedi_subdevice* subdevices; int iobase; } ;


 int COMEDI_SUBD_DI ;
 int COMEDI_SUBD_DO ;
 int COMEDI_SUBD_PWM ;
 int COMEDI_SUBD_UNUSED ;
 int PCI1760_CMD_GET_DO ;
 int SDF_PWM_COUNTER ;
 int SDF_READABLE ;
 int SDF_WRITABLE ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_pci_enable (struct comedi_device*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int pci1760_cmd (struct comedi_device*,int ,int ) ;
 int pci1760_di_insn_bits ;
 int pci1760_do_insn_bits ;
 int pci1760_pwm_insn_config ;
 int pci1760_reset (struct comedi_device*) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int range_digital ;

__attribute__((used)) static int pci1760_auto_attach(struct comedi_device *dev,
          unsigned long context)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 struct comedi_subdevice *s;
 int ret;

 ret = comedi_pci_enable(dev);
 if (ret)
  return ret;
 dev->iobase = pci_resource_start(pcidev, 0);

 pci1760_reset(dev);

 ret = comedi_alloc_subdevices(dev, 4);
 if (ret)
  return ret;


 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_DI;
 s->subdev_flags = SDF_READABLE;
 s->n_chan = 8;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = pci1760_di_insn_bits;


 s = &dev->subdevices[1];
 s->type = COMEDI_SUBD_DO;
 s->subdev_flags = SDF_WRITABLE;
 s->n_chan = 8;
 s->maxdata = 1;
 s->range_table = &range_digital;
 s->insn_bits = pci1760_do_insn_bits;


 ret = pci1760_cmd(dev, PCI1760_CMD_GET_DO, 0);
 if (ret < 0)
  return ret;
 s->state = ret;


 s = &dev->subdevices[2];
 s->type = COMEDI_SUBD_PWM;
 s->subdev_flags = SDF_PWM_COUNTER;
 s->n_chan = 2;
 s->insn_config = pci1760_pwm_insn_config;


 s = &dev->subdevices[3];
 s->type = COMEDI_SUBD_UNUSED;

 return 0;
}
