
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt9812_private {int mut; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {struct dt9812_private* private; } ;


 int comedi_readback_insn_read (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dt9812_ao_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 struct dt9812_private *devpriv = dev->private;
 int ret;

 mutex_lock(&devpriv->mut);
 ret = comedi_readback_insn_read(dev, s, insn, data);
 mutex_unlock(&devpriv->mut);

 return ret;
}
