
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int state; scalar_t__ private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 int S626_LP_RDDIN (unsigned long) ;
 int S626_LP_WRDOUT (unsigned long) ;
 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 unsigned int s626_debi_read (struct comedi_device*,int ) ;
 int s626_debi_write (struct comedi_device*,int ,int ) ;

__attribute__((used)) static int s626_dio_insn_bits(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 unsigned long group = (unsigned long)s->private;

 if (comedi_dio_update_state(s, data))
  s626_debi_write(dev, S626_LP_WRDOUT(group), s->state);

 data[1] = s626_debi_read(dev, S626_LP_RDDIN(group));

 return insn->n;
}
