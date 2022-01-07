
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int clock_and_fout; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct ni_private* private; } ;


 int NISTC_CLK_FOUT_DIVIDER (unsigned int) ;
 int NISTC_CLK_FOUT_DIVIDER_MASK ;
 int NISTC_CLK_FOUT_ENA ;
 int NISTC_CLK_FOUT_REG ;
 int ni_stc_writew (struct comedi_device*,int ,int ) ;

__attribute__((used)) static int ni_freq_out_insn_write(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 struct ni_private *devpriv = dev->private;

 if (insn->n) {
  unsigned int val = data[insn->n - 1];

  devpriv->clock_and_fout &= ~NISTC_CLK_FOUT_ENA;
  ni_stc_writew(dev, devpriv->clock_and_fout, NISTC_CLK_FOUT_REG);
  devpriv->clock_and_fout &= ~NISTC_CLK_FOUT_DIVIDER_MASK;


  devpriv->clock_and_fout |= NISTC_CLK_FOUT_DIVIDER(val);

  devpriv->clock_and_fout |= NISTC_CLK_FOUT_ENA;
  ni_stc_writew(dev, devpriv->clock_and_fout, NISTC_CLK_FOUT_REG);
 }
 return insn->n;
}
