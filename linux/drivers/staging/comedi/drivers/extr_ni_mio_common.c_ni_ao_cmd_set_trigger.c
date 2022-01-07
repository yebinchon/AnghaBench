
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {unsigned int ao_mode1; unsigned int ao_mode3; int routing_tables; } ;
struct comedi_device {struct ni_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ start_src; int start_arg; } ;


 int CR_CHAN (int) ;
 int CR_EDGE ;
 int CR_INVERT ;
 unsigned int NISTC_AO_MODE1_CONTINUOUS ;
 int NISTC_AO_MODE1_REG ;
 unsigned int NISTC_AO_MODE1_TRIGGER_ONCE ;
 int NISTC_AO_MODE3_REG ;
 unsigned int NISTC_AO_MODE3_TRIG_LEN ;
 int NISTC_AO_TRIG_SEL_REG ;
 unsigned int NISTC_AO_TRIG_START1_EDGE ;
 unsigned int NISTC_AO_TRIG_START1_POLARITY ;
 unsigned int NISTC_AO_TRIG_START1_SEL (int ) ;
 unsigned int NISTC_AO_TRIG_START1_SYNC ;
 unsigned int NISTC_RESET_AO_CFG_END ;
 unsigned int NISTC_RESET_AO_CFG_START ;
 int NISTC_RESET_REG ;
 int NI_AO_StartTrigger ;
 scalar_t__ TRIG_INT ;
 scalar_t__ TRIG_NONE ;
 int ni_get_reg_value_roffs (int ,int ,int *,int) ;
 int ni_stc_writew (struct comedi_device*,unsigned int,int ) ;

__attribute__((used)) static void ni_ao_cmd_set_trigger(struct comedi_device *dev,
      const struct comedi_cmd *cmd)
{
 struct ni_private *devpriv = dev->private;
 unsigned int trigsel;

 ni_stc_writew(dev, NISTC_RESET_AO_CFG_START, NISTC_RESET_REG);


 if (cmd->stop_src == TRIG_NONE) {
  devpriv->ao_mode1 |= NISTC_AO_MODE1_CONTINUOUS;
  devpriv->ao_mode1 &= ~NISTC_AO_MODE1_TRIGGER_ONCE;
 } else {
  devpriv->ao_mode1 &= ~NISTC_AO_MODE1_CONTINUOUS;
  devpriv->ao_mode1 |= NISTC_AO_MODE1_TRIGGER_ONCE;
 }
 ni_stc_writew(dev, devpriv->ao_mode1, NISTC_AO_MODE1_REG);

 if (cmd->start_src == TRIG_INT) {
  trigsel = NISTC_AO_TRIG_START1_EDGE |
     NISTC_AO_TRIG_START1_SYNC;
 } else {
  trigsel = NISTC_AO_TRIG_START1_SEL(
   ni_get_reg_value_roffs(CR_CHAN(cmd->start_arg),
            NI_AO_StartTrigger,
            &devpriv->routing_tables, 1));

  if (cmd->start_arg & CR_INVERT)
   trigsel |= NISTC_AO_TRIG_START1_POLARITY;

  if (cmd->start_arg & CR_EDGE)
   trigsel |= NISTC_AO_TRIG_START1_EDGE;
 }
 ni_stc_writew(dev, trigsel, NISTC_AO_TRIG_SEL_REG);





 devpriv->ao_mode3 &= ~NISTC_AO_MODE3_TRIG_LEN;
 ni_stc_writew(dev, devpriv->ao_mode3, NISTC_AO_MODE3_REG);

 ni_stc_writew(dev, NISTC_RESET_AO_CFG_END, NISTC_RESET_REG);
}
