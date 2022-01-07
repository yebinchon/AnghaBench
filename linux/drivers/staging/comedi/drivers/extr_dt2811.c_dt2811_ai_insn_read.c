
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int dt2811_ai_eoc ;
 unsigned int dt2811_ai_read_sample (struct comedi_device*,struct comedi_subdevice*) ;
 int dt2811_ai_set_chanspec (struct comedi_device*,int ) ;

__attribute__((used)) static int dt2811_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 int ret;
 int i;


 for (i = 0; i < insn->n; i++) {

  dt2811_ai_set_chanspec(dev, insn->chanspec);

  ret = comedi_timeout(dev, s, insn, dt2811_ai_eoc, 0);
  if (ret)
   return ret;

  data[i] = dt2811_ai_read_sample(dev, s);
 }

 return insn->n;
}
