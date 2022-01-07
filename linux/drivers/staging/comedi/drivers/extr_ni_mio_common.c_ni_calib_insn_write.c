
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 int CR_CHAN (int ) ;
 int ni_write_caldac (struct comedi_device*,int ,unsigned int) ;

__attribute__((used)) static int ni_calib_insn_write(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 if (insn->n) {

  ni_write_caldac(dev, CR_CHAN(insn->chanspec),
    data[insn->n - 1]);
 }

 return insn->n;
}
