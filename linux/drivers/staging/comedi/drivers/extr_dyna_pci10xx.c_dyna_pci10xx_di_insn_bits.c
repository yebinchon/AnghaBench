
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct dyna_pci10xx_private {int mutex; int BADR3; } ;
struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct dyna_pci10xx_private* private; } ;


 unsigned int inw_p (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smp_mb () ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dyna_pci10xx_di_insn_bits(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 struct dyna_pci10xx_private *devpriv = dev->private;
 u16 d = 0;

 mutex_lock(&devpriv->mutex);
 smp_mb();
 d = inw_p(devpriv->BADR3);
 usleep_range(10, 100);


 data[1] = d;
 data[0] = s->state;
 mutex_unlock(&devpriv->mutex);
 return insn->n;
}
