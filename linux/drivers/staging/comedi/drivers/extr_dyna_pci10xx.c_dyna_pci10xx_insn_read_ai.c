
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dyna_pci10xx_private {int mutex; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct dyna_pci10xx_private* private; } ;


 unsigned int CR_CHAN (int ) ;
 size_t CR_RANGE (int ) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int dyna_pci10xx_ai_eoc ;
 int inw_p (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outw_p (int,scalar_t__) ;
 unsigned int* range_codes_pci1050_ai ;
 int smp_mb () ;
 int usleep_range (int,int) ;

__attribute__((used)) static int dyna_pci10xx_insn_read_ai(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 struct dyna_pci10xx_private *devpriv = dev->private;
 int n;
 u16 d = 0;
 int ret = 0;
 unsigned int chan, range;


 chan = CR_CHAN(insn->chanspec);
 range = range_codes_pci1050_ai[CR_RANGE((insn->chanspec))];

 mutex_lock(&devpriv->mutex);

 for (n = 0; n < insn->n; n++) {

  smp_mb();
  outw_p(0x0000 + range + chan, dev->iobase + 2);
  usleep_range(10, 20);

  ret = comedi_timeout(dev, s, insn, dyna_pci10xx_ai_eoc, 0);
  if (ret)
   break;


  d = inw_p(dev->iobase);

  d &= 0x0FFF;
  data[n] = d;
 }
 mutex_unlock(&devpriv->mutex);


 return ret ? ret : n;
}
