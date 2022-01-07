
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int ao_mode1; int ao_cmd2; int ao_mode2; int ao_cmd1; int routing_tables; } ;
struct comedi_device {struct ni_private* private; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; int scan_begin_arg; } ;


 int CMDF_ROUND_NEAREST ;
 int CR_CHAN (int) ;
 int CR_INVERT ;
 int NISTC_AO_CMD1_DAC0_UPDATE_MODE ;
 int NISTC_AO_CMD1_DAC1_UPDATE_MODE ;
 int NISTC_AO_CMD1_REG ;
 int NISTC_AO_CMD1_UI_LOAD ;
 int NISTC_AO_CMD2_BC_GATE_ENA ;
 int NISTC_AO_CMD2_REG ;
 int NISTC_AO_MODE1_REG ;
 int NISTC_AO_MODE1_UI_SRC_MASK ;
 int NISTC_AO_MODE1_UI_SRC_POLARITY ;
 int NISTC_AO_MODE1_UPDATE_SRC (int ) ;
 int NISTC_AO_MODE1_UPDATE_SRC_MASK ;
 int NISTC_AO_MODE1_UPDATE_SRC_POLARITY ;
 int NISTC_AO_MODE2_REG ;
 int NISTC_AO_MODE2_UI_INIT_LOAD_SRC ;
 int NISTC_AO_MODE2_UI_RELOAD_MODE (int) ;
 int NISTC_AO_UI_LOADA_REG ;
 int NISTC_RESET_AO_CFG_END ;
 int NISTC_RESET_AO_CFG_START ;
 int NISTC_RESET_REG ;
 int NI_AO_SampleClock ;
 scalar_t__ TRIG_TIMER ;
 int ni_get_reg_value (int ,int ,int *) ;
 unsigned int ni_ns_to_timer (struct comedi_device*,int,int ) ;
 int ni_stc_writel (struct comedi_device*,unsigned int,int ) ;
 int ni_stc_writew (struct comedi_device*,int,int ) ;

__attribute__((used)) static void ni_ao_cmd_set_update(struct comedi_device *dev,
     const struct comedi_cmd *cmd)
{
 struct ni_private *devpriv = dev->private;

 ni_stc_writew(dev, NISTC_RESET_AO_CFG_START, NISTC_RESET_REG);





 devpriv->ao_mode1 &= ~(
   NISTC_AO_MODE1_UI_SRC_MASK |
   NISTC_AO_MODE1_UI_SRC_POLARITY |
   NISTC_AO_MODE1_UPDATE_SRC_MASK |
   NISTC_AO_MODE1_UPDATE_SRC_POLARITY
 );

 if (cmd->scan_begin_src == TRIG_TIMER) {
  unsigned int trigvar;

  devpriv->ao_cmd2 &= ~NISTC_AO_CMD2_BC_GATE_ENA;
  trigvar = ni_ns_to_timer(dev, cmd->scan_begin_arg,
      CMDF_ROUND_NEAREST);






  ni_stc_writel(dev, 1, NISTC_AO_UI_LOADA_REG);
  ni_stc_writew(dev, NISTC_AO_CMD1_UI_LOAD, NISTC_AO_CMD1_REG);
  ni_stc_writel(dev, trigvar, NISTC_AO_UI_LOADA_REG);
 } else {

  devpriv->ao_cmd2 |= NISTC_AO_CMD2_BC_GATE_ENA;
  devpriv->ao_mode1 |= NISTC_AO_MODE1_UPDATE_SRC(
   ni_get_reg_value(CR_CHAN(cmd->scan_begin_arg),
      NI_AO_SampleClock,
      &devpriv->routing_tables));
  if (cmd->scan_begin_arg & CR_INVERT)
   devpriv->ao_mode1 |= NISTC_AO_MODE1_UPDATE_SRC_POLARITY;
 }

 ni_stc_writew(dev, devpriv->ao_cmd2, NISTC_AO_CMD2_REG);
 ni_stc_writew(dev, devpriv->ao_mode1, NISTC_AO_MODE1_REG);
 devpriv->ao_mode2 &= ~(NISTC_AO_MODE2_UI_RELOAD_MODE(3) |
          NISTC_AO_MODE2_UI_INIT_LOAD_SRC);
 ni_stc_writew(dev, devpriv->ao_mode2, NISTC_AO_MODE2_REG);


 devpriv->ao_cmd1 |= NISTC_AO_CMD1_DAC1_UPDATE_MODE |
       NISTC_AO_CMD1_DAC0_UPDATE_MODE;

 ni_stc_writew(dev, devpriv->ao_cmd1, NISTC_AO_CMD1_REG);

 ni_stc_writew(dev, NISTC_RESET_AO_CFG_END, NISTC_RESET_REG);
}
