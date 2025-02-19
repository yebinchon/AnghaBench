
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_private {int is_6xxx; unsigned int ao_mode1; int is_m_series; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct ni_private* private; } ;
struct comedi_cmd {unsigned int chanlist_len; int scan_end_arg; int * chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int CR_CHAN (int ) ;
 int NI611X_AO_TIMED_REG ;
 int NI611X_AO_WAVEFORM_GEN_REG ;
 unsigned int NISTC_AO_MODE1_MULTI_CHAN ;
 int NISTC_AO_MODE1_REG ;
 unsigned int NISTC_AO_OUT_CTRL_CHANS (int) ;
 int NISTC_AO_OUT_CTRL_REG ;
 unsigned int NISTC_AO_OUT_CTRL_UPDATE_SEL_HIGHZ ;
 unsigned int NISTC_RESET_AO_CFG_END ;
 unsigned int NISTC_RESET_AO_CFG_START ;
 int NISTC_RESET_REG ;
 int ni_ao_config_chanlist (struct comedi_device*,struct comedi_subdevice*,int *,unsigned int,int) ;
 int ni_ao_win_outw (struct comedi_device*,unsigned int,int ) ;
 int ni_stc_writew (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static void ni_ao_cmd_set_channels(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct ni_private *devpriv = dev->private;
 const struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int bits = 0;

 ni_stc_writew(dev, NISTC_RESET_AO_CFG_START, NISTC_RESET_REG);

 if (devpriv->is_6xxx) {
  unsigned int i;

  bits = 0;
  for (i = 0; i < cmd->chanlist_len; ++i) {
   int chan = CR_CHAN(cmd->chanlist[i]);

   bits |= 1 << chan;
   ni_ao_win_outw(dev, chan, NI611X_AO_WAVEFORM_GEN_REG);
  }
  ni_ao_win_outw(dev, bits, NI611X_AO_TIMED_REG);
 }

 ni_ao_config_chanlist(dev, s, cmd->chanlist, cmd->chanlist_len, 1);

 if (cmd->scan_end_arg > 1) {
  devpriv->ao_mode1 |= NISTC_AO_MODE1_MULTI_CHAN;
  bits = NISTC_AO_OUT_CTRL_CHANS(cmd->scan_end_arg - 1)
     | NISTC_AO_OUT_CTRL_UPDATE_SEL_HIGHZ;

 } else {
  devpriv->ao_mode1 &= ~NISTC_AO_MODE1_MULTI_CHAN;
  bits = NISTC_AO_OUT_CTRL_UPDATE_SEL_HIGHZ;
  if (devpriv->is_m_series | devpriv->is_6xxx)
   bits |= NISTC_AO_OUT_CTRL_CHANS(0);
  else
   bits |= NISTC_AO_OUT_CTRL_CHANS(
     CR_CHAN(cmd->chanlist[0]));
 }

 ni_stc_writew(dev, devpriv->ao_mode1, NISTC_AO_MODE1_REG);
 ni_stc_writew(dev, bits, NISTC_AO_OUT_CTRL_REG);

 ni_stc_writew(dev, NISTC_RESET_AO_CFG_END, NISTC_RESET_REG);
}
