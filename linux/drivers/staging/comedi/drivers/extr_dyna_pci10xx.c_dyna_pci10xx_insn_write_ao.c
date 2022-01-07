
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dyna_pci10xx_private {int mutex; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int iobase; struct dyna_pci10xx_private* private; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outw_p (unsigned int,int ) ;
 int smp_mb () ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dyna_pci10xx_insn_write_ao(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 struct dyna_pci10xx_private *devpriv = dev->private;
 int n;

 mutex_lock(&devpriv->mutex);
 for (n = 0; n < insn->n; n++) {
  smp_mb();

  outw_p(data[n], dev->iobase);
  usleep_range(10, 20);
 }
 mutex_unlock(&devpriv->mutex);
 return n;
}
