
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 int PCI1760_CMD_SET_DO ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int pci1760_cmd (struct comedi_device*,int ,unsigned int) ;

__attribute__((used)) static int pci1760_do_insn_bits(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 int ret;

 if (comedi_dio_update_state(s, data)) {
  ret = pci1760_cmd(dev, PCI1760_CMD_SET_DO, s->state);
  if (ret < 0)
   return ret;
 }

 data[1] = s->state;

 return insn->n;
}
