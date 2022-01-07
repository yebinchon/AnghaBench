
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {scalar_t__ is_6xxx; scalar_t__ ao_mode3; scalar_t__ is_m_series; scalar_t__ ao_mode2; scalar_t__ ao_mode1; scalar_t__ ao_cmd2; scalar_t__ ao_cmd1; } ;
struct comedi_subdevice {unsigned int n_chan; } ;
struct comedi_device {struct ni_private* private; } ;


 unsigned int NI611X_AO_MISC_CLEAR_WG ;
 int NI611X_AO_MISC_REG ;
 int NI671X_AO_IMMEDIATE_REG ;
 scalar_t__ NISTC_AO_CMD1_DISARM ;
 int NISTC_AO_CMD1_REG ;
 int NISTC_AO_CMD2_REG ;
 int NISTC_AO_MODE1_REG ;
 int NISTC_AO_MODE2_REG ;
 scalar_t__ NISTC_AO_MODE3_LAST_GATE_DISABLE ;
 int NISTC_AO_MODE3_REG ;
 int NISTC_AO_OUT_CTRL_REG ;
 scalar_t__ NISTC_AO_PERSONAL_BC_SRC_SEL ;
 int NISTC_AO_PERSONAL_REG ;
 int NISTC_AO_START_SEL_REG ;
 int NISTC_AO_TRIG_SEL_REG ;
 scalar_t__ NISTC_INTB_ACK_AO_ALL ;
 int NISTC_INTB_ACK_REG ;
 int NISTC_INTB_ENA_REG ;
 scalar_t__ NISTC_RESET_AO ;
 scalar_t__ NISTC_RESET_AO_CFG_END ;
 scalar_t__ NISTC_RESET_AO_CFG_START ;
 int NISTC_RESET_REG ;
 int ni_ao_win_outw (struct comedi_device*,unsigned int,int ) ;
 int ni_release_ao_mite_channel (struct comedi_device*) ;
 int ni_set_bits (struct comedi_device*,int ,int ,int ) ;
 int ni_stc_writew (struct comedi_device*,scalar_t__,int ) ;

__attribute__((used)) static int ni_ao_reset(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct ni_private *devpriv = dev->private;

 ni_release_ao_mite_channel(dev);


 if (devpriv->is_m_series)

  ni_stc_writew(dev, NISTC_RESET_AO, NISTC_RESET_REG);


 ni_stc_writew(dev, NISTC_RESET_AO_CFG_START, NISTC_RESET_REG);


 ni_stc_writew(dev, NISTC_AO_CMD1_DISARM, NISTC_AO_CMD1_REG);






 devpriv->ao_cmd1 = 0;
 devpriv->ao_cmd2 = 0;
 devpriv->ao_mode1 = 0;
 devpriv->ao_mode2 = 0;
 if (devpriv->is_m_series)
  devpriv->ao_mode3 = NISTC_AO_MODE3_LAST_GATE_DISABLE;
 else
  devpriv->ao_mode3 = 0;

 ni_stc_writew(dev, 0, NISTC_AO_PERSONAL_REG);
 ni_stc_writew(dev, 0, NISTC_AO_CMD1_REG);
 ni_stc_writew(dev, 0, NISTC_AO_CMD2_REG);
 ni_stc_writew(dev, 0, NISTC_AO_MODE1_REG);
 ni_stc_writew(dev, 0, NISTC_AO_MODE2_REG);
 ni_stc_writew(dev, 0, NISTC_AO_OUT_CTRL_REG);
 ni_stc_writew(dev, devpriv->ao_mode3, NISTC_AO_MODE3_REG);
 ni_stc_writew(dev, 0, NISTC_AO_START_SEL_REG);
 ni_stc_writew(dev, 0, NISTC_AO_TRIG_SEL_REG);


 ni_set_bits(dev, NISTC_INTB_ENA_REG, ~0, 0);


 ni_stc_writew(dev, NISTC_AO_PERSONAL_BC_SRC_SEL, NISTC_AO_PERSONAL_REG);
 ni_stc_writew(dev, NISTC_INTB_ACK_AO_ALL, NISTC_INTB_ACK_REG);


 if (devpriv->is_6xxx) {
  ni_ao_win_outw(dev, (1u << s->n_chan) - 1u,
          NI671X_AO_IMMEDIATE_REG);
  ni_ao_win_outw(dev, NI611X_AO_MISC_CLEAR_WG,
          NI611X_AO_MISC_REG);
 }
 ni_stc_writew(dev, NISTC_RESET_AO_CFG_END, NISTC_RESET_REG);


 return 0;
}
