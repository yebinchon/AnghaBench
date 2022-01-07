
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dyna_pci10xx_private {int mutex; int BADR3; } ;
struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct dyna_pci10xx_private* private; } ;


 scalar_t__ comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outw_p (unsigned int,int ) ;
 int smp_mb () ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dyna_pci10xx_do_insn_bits(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 struct dyna_pci10xx_private *devpriv = dev->private;

 mutex_lock(&devpriv->mutex);
 if (comedi_dio_update_state(s, data)) {
  smp_mb();
  outw_p(s->state, devpriv->BADR3);
  usleep_range(10, 100);
 }

 data[1] = s->state;
 mutex_unlock(&devpriv->mutex);

 return insn->n;
}
