
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int PCL711_MODE_SOFTTRIG ;
 int PCL711_SOFTTRIG ;
 scalar_t__ PCL711_SOFTTRIG_REG ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int outb (int ,scalar_t__) ;
 int pcl711_ai_eoc ;
 unsigned int pcl711_ai_get_sample (struct comedi_device*,struct comedi_subdevice*) ;
 int pcl711_ai_set_mode (struct comedi_device*,int ) ;
 int pcl711_set_changain (struct comedi_device*,struct comedi_subdevice*,int ) ;

__attribute__((used)) static int pcl711_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 int ret;
 int i;

 pcl711_set_changain(dev, s, insn->chanspec);

 pcl711_ai_set_mode(dev, PCL711_MODE_SOFTTRIG);

 for (i = 0; i < insn->n; i++) {
  outb(PCL711_SOFTTRIG, dev->iobase + PCL711_SOFTTRIG_REG);

  ret = comedi_timeout(dev, s, insn, pcl711_ai_eoc, 0);
  if (ret)
   return ret;

  data[i] = pcl711_ai_get_sample(dev, s);
 }

 return insn->n;
}
