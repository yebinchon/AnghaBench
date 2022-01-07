
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ PCL816_CTRL_REG ;
 int PCL816_CTRL_SOFT_TRIG ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int outb (int ,scalar_t__) ;
 int pcl816_ai_clear_eoc (struct comedi_device*) ;
 int pcl816_ai_eoc ;
 unsigned int pcl816_ai_get_sample (struct comedi_device*,struct comedi_subdevice*) ;
 int pcl816_ai_set_chan_range (struct comedi_device*,unsigned int,unsigned int) ;
 int pcl816_ai_set_chan_scan (struct comedi_device*,unsigned int,unsigned int) ;
 int pcl816_ai_soft_trig (struct comedi_device*) ;

__attribute__((used)) static int pcl816_ai_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 int ret = 0;
 int i;

 outb(PCL816_CTRL_SOFT_TRIG, dev->iobase + PCL816_CTRL_REG);

 pcl816_ai_set_chan_range(dev, chan, range);
 pcl816_ai_set_chan_scan(dev, chan, chan);

 for (i = 0; i < insn->n; i++) {
  pcl816_ai_clear_eoc(dev);
  pcl816_ai_soft_trig(dev);

  ret = comedi_timeout(dev, s, insn, pcl816_ai_eoc, 0);
  if (ret)
   break;

  data[i] = pcl816_ai_get_sample(dev, s);
 }
 outb(0, dev->iobase + PCL816_CTRL_REG);
 pcl816_ai_clear_eoc(dev);

 return ret ? ret : insn->n;
}
