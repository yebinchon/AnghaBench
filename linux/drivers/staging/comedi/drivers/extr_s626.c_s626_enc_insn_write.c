
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int s626_preload (struct comedi_device*,unsigned int,unsigned int) ;
 int s626_pulse_index (struct comedi_device*,unsigned int) ;
 int s626_set_load_trig (struct comedi_device*,unsigned int,int) ;

__attribute__((used)) static int s626_enc_insn_write(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn, unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);


 s626_preload(dev, chan, data[0]);





 s626_set_load_trig(dev, chan, 0);
 s626_pulse_index(dev, chan);
 s626_set_load_trig(dev, chan, 2);

 return 1;
}
