
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dt282x_private {int divisor; int supcsr; int ntrig; int nread; int adcsr; int dma_dir; struct comedi_isadma* dma; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_isadma {scalar_t__ cur_dma; } ;
struct comedi_device {scalar_t__ iobase; struct dt282x_private* private; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; int stop_arg; int scan_end_arg; int chanlist; int chanlist_len; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int COMEDI_ISADMA_READ ;
 int DT2821_ADCSR_ADCLK ;
 int DT2821_ADCSR_IADDONE ;
 int DT2821_ADCSR_MUXBUSY ;
 scalar_t__ DT2821_ADCSR_REG ;
 int DT2821_SUPCSR_ADCINIT ;
 int DT2821_SUPCSR_BUFFB ;
 int DT2821_SUPCSR_CLRDMADNE ;
 int DT2821_SUPCSR_DDMA ;
 int DT2821_SUPCSR_DS_AD_CLK ;
 int DT2821_SUPCSR_DS_AD_TRIG ;
 int DT2821_SUPCSR_ERRINTEN ;
 int DT2821_SUPCSR_PRLD ;
 scalar_t__ DT2821_SUPCSR_REG ;
 int DT2821_SUPCSR_STRIG ;
 int DT2821_SUPCSR_XTRIG ;
 scalar_t__ DT2821_TMRCTR_REG ;
 scalar_t__ TRIG_FOLLOW ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,int *,int ,int ) ;
 int dt282x_ai_timeout ;
 int dt282x_disable_dma (struct comedi_device*) ;
 int dt282x_load_changain (struct comedi_device*,int ,int ) ;
 int dt282x_prep_ai_dma (struct comedi_device*,int,int ) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int dt282x_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct dt282x_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_cmd *cmd = &s->async->cmd;
 int ret;

 dt282x_disable_dma(dev);

 outw(devpriv->divisor, dev->iobase + DT2821_TMRCTR_REG);

 devpriv->supcsr = DT2821_SUPCSR_ERRINTEN;
 if (cmd->scan_begin_src == TRIG_FOLLOW)
  devpriv->supcsr = DT2821_SUPCSR_DS_AD_CLK;
 else
  devpriv->supcsr = DT2821_SUPCSR_DS_AD_TRIG;
 outw(devpriv->supcsr |
      DT2821_SUPCSR_CLRDMADNE |
      DT2821_SUPCSR_BUFFB |
      DT2821_SUPCSR_ADCINIT,
      dev->iobase + DT2821_SUPCSR_REG);

 devpriv->ntrig = cmd->stop_arg * cmd->scan_end_arg;
 devpriv->nread = devpriv->ntrig;

 devpriv->dma_dir = COMEDI_ISADMA_READ;
 dma->cur_dma = 0;
 dt282x_prep_ai_dma(dev, 0, 0);
 if (devpriv->ntrig) {
  dt282x_prep_ai_dma(dev, 1, 0);
  devpriv->supcsr |= DT2821_SUPCSR_DDMA;
  outw(devpriv->supcsr, dev->iobase + DT2821_SUPCSR_REG);
 }

 devpriv->adcsr = 0;

 dt282x_load_changain(dev, cmd->chanlist_len, cmd->chanlist);

 devpriv->adcsr = DT2821_ADCSR_ADCLK | DT2821_ADCSR_IADDONE;
 outw(devpriv->adcsr, dev->iobase + DT2821_ADCSR_REG);

 outw(devpriv->supcsr | DT2821_SUPCSR_PRLD,
      dev->iobase + DT2821_SUPCSR_REG);
 ret = comedi_timeout(dev, s, ((void*)0),
        dt282x_ai_timeout, DT2821_ADCSR_MUXBUSY);
 if (ret)
  return ret;

 if (cmd->scan_begin_src == TRIG_FOLLOW) {
  outw(devpriv->supcsr | DT2821_SUPCSR_STRIG,
       dev->iobase + DT2821_SUPCSR_REG);
 } else {
  devpriv->supcsr |= DT2821_SUPCSR_XTRIG;
  outw(devpriv->supcsr, dev->iobase + DT2821_SUPCSR_REG);
 }

 return 0;
}
