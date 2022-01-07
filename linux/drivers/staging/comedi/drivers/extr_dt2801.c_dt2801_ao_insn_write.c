
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int DT_C_WRITE_DAIM ;
 int dt2801_writecmd (struct comedi_device*,int ) ;
 int dt2801_writedata (struct comedi_device*,unsigned int) ;
 int dt2801_writedata2 (struct comedi_device*,unsigned int) ;

__attribute__((used)) static int dt2801_ao_insn_write(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);

 dt2801_writecmd(dev, DT_C_WRITE_DAIM);
 dt2801_writedata(dev, chan);
 dt2801_writedata2(dev, data[0]);

 s->readback[chan] = data[0];

 return 1;
}
