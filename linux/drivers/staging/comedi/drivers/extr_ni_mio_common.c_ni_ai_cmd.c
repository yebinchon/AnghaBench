
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_private {int an_trig_etc_reg; int ai_cmd2; int aimode; int routing_tables; scalar_t__ is_611x; scalar_t__ is_6143; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ irq; int class_dev; struct ni_private* private; } ;
struct comedi_cmd {int chanlist_len; int start_src; int start_arg; int stop_src; int scan_begin_src; int scan_begin_arg; int convert_src; int convert_arg; int flags; int stop_arg; int chanlist; } ;
struct TYPE_2__ {int * inttrig; struct comedi_cmd cmd; } ;





 int CMDF_ROUND_NEAREST ;
 int CMDF_WAKE_EOS ;
 int CR_CHAN (int) ;
 int CR_EDGE ;
 int CR_INVERT ;
 int EIO ;
 int NISTC_AI_CMD1_DIV_ARM ;
 int NISTC_AI_CMD1_REG ;
 int NISTC_AI_CMD1_SC_ARM ;
 int NISTC_AI_CMD1_SC_LOAD ;
 int NISTC_AI_CMD1_SI2_ARM ;
 int NISTC_AI_CMD1_SI2_LOAD ;
 int NISTC_AI_CMD1_SI_ARM ;
 int NISTC_AI_CMD1_SI_LOAD ;
 int NISTC_AI_CMD2_END_ON_EOS ;
 int NISTC_AI_CMD2_REG ;
 int NISTC_AI_CMD2_START1_PULSE ;
 int NISTC_AI_MODE1_CONTINUOUS ;
 int NISTC_AI_MODE1_CONVERT_POLARITY ;
 int NISTC_AI_MODE1_CONVERT_SRC (int ) ;
 int NISTC_AI_MODE1_REG ;
 int NISTC_AI_MODE1_RSVD ;
 int NISTC_AI_MODE1_START_STOP ;
 int NISTC_AI_MODE1_TRIGGER_ONCE ;
 int NISTC_AI_MODE2_PRE_TRIGGER ;
 int NISTC_AI_MODE2_REG ;
 int NISTC_AI_MODE2_SC_GATE_ENA ;
 int NISTC_AI_MODE2_SC_INIT_LOAD_SRC ;
 int NISTC_AI_MODE2_SC_RELOAD_MODE ;
 int NISTC_AI_MODE2_SI2_INIT_LOAD_SRC ;
 int NISTC_AI_MODE2_SI2_RELOAD_MODE ;
 int NISTC_AI_MODE2_SI_INIT_LOAD_SRC ;
 int NISTC_AI_MODE2_SI_RELOAD_MODE (int ) ;
 int NISTC_AI_MODE2_START_STOP_GATE_ENA ;
 int NISTC_AI_MODE3_FIFO_MODE_HF ;
 int NISTC_AI_MODE3_FIFO_MODE_HF_E ;
 int NISTC_AI_MODE3_FIFO_MODE_NE ;
 int NISTC_AI_MODE3_REG ;
 int NISTC_AI_SC_LOADA_REG ;
 int NISTC_AI_SI2_LOADA_REG ;
 int NISTC_AI_SI2_LOADB_REG ;
 int NISTC_AI_SI_LOADA_REG ;
 int NISTC_AI_START_EDGE ;
 int NISTC_AI_START_POLARITY ;
 int NISTC_AI_START_SEL (int ) ;
 int NISTC_AI_START_STOP_REG ;
 int NISTC_AI_START_SYNC ;
 int NISTC_AI_STOP_EDGE ;
 int NISTC_AI_STOP_POLARITY ;
 int NISTC_AI_STOP_SEL (int) ;
 int NISTC_AI_STOP_SYNC ;
 int NISTC_AI_TRIG_SEL_REG ;
 unsigned int NISTC_AI_TRIG_START1_EDGE ;
 unsigned int NISTC_AI_TRIG_START1_POLARITY ;
 unsigned int NISTC_AI_TRIG_START1_SEL (int ) ;
 unsigned int NISTC_AI_TRIG_START1_SYNC ;
 unsigned int NISTC_AI_TRIG_START2_SEL (int ) ;
 int NISTC_ATRIG_ETC_ENA ;
 int NISTC_ATRIG_ETC_REG ;
 int NISTC_INTA_ACK_AI_ALL ;
 int NISTC_INTA_ACK_REG ;
 int NISTC_INTA_ENA_AI_ERR ;
 int NISTC_INTA_ENA_AI_FIFO ;
 int NISTC_INTA_ENA_AI_SC_TC ;
 int NISTC_INTA_ENA_AI_STOP ;
 int NISTC_INTA_ENA_REG ;
 int NISTC_RESET_AI_CFG_END ;
 int NISTC_RESET_AI_CFG_START ;
 int NISTC_RESET_REG ;
 int NI_AI_ConvertClock ;
 int NI_AI_SampleClock ;
 int NI_AI_StartTrigger ;






 int dev_err (int ,char*) ;
 int * ni_ai_inttrig ;
 int ni_ai_setup_MITE_dma (struct comedi_device*) ;
 int ni_clear_ai_fifo (struct comedi_device*) ;
 int ni_get_reg_value_roffs (int ,int ,int *,int) ;
 int ni_load_channelgain_list (struct comedi_device*,struct comedi_subdevice*,int,int ) ;
 int ni_ns_to_timer (struct comedi_device*,int,int ) ;
 int ni_set_bits (struct comedi_device*,int ,int,int) ;
 int ni_stc_writel (struct comedi_device*,int,int ) ;
 int ni_stc_writew (struct comedi_device*,int,int ) ;
 unsigned int num_adc_stages_611x ;

__attribute__((used)) static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct ni_private *devpriv = dev->private;
 const struct comedi_cmd *cmd = &s->async->cmd;
 int timer;
 int mode1 = 0;
 int mode2 = 0;
 int start_stop_select = 0;
 unsigned int stop_count;
 int interrupt_a_enable = 0;
 unsigned int ai_trig;

 if (dev->irq == 0) {
  dev_err(dev->class_dev, "cannot run command without an irq\n");
  return -EIO;
 }
 ni_clear_ai_fifo(dev);

 ni_load_channelgain_list(dev, s, cmd->chanlist_len, cmd->chanlist);


 ni_stc_writew(dev, NISTC_RESET_AI_CFG_START, NISTC_RESET_REG);





 devpriv->an_trig_etc_reg &= ~NISTC_ATRIG_ETC_ENA;
 ni_stc_writew(dev, devpriv->an_trig_etc_reg, NISTC_ATRIG_ETC_REG);

 ai_trig = NISTC_AI_TRIG_START2_SEL(0) | NISTC_AI_TRIG_START1_SYNC;
 switch (cmd->start_src) {
 case 131:
 case 129:
  ai_trig |= NISTC_AI_TRIG_START1_EDGE |
      NISTC_AI_TRIG_START1_SEL(0);
  break;
 case 132:
  ai_trig |= NISTC_AI_TRIG_START1_SEL(
   ni_get_reg_value_roffs(CR_CHAN(cmd->start_arg),
            NI_AI_StartTrigger,
            &devpriv->routing_tables, 1));

  if (cmd->start_arg & CR_INVERT)
   ai_trig |= NISTC_AI_TRIG_START1_POLARITY;
  if (cmd->start_arg & CR_EDGE)
   ai_trig |= NISTC_AI_TRIG_START1_EDGE;
  break;
 }
 ni_stc_writew(dev, ai_trig, NISTC_AI_TRIG_SEL_REG);

 mode2 &= ~NISTC_AI_MODE2_PRE_TRIGGER;
 mode2 &= ~NISTC_AI_MODE2_SC_INIT_LOAD_SRC;
 mode2 &= ~NISTC_AI_MODE2_SC_RELOAD_MODE;
 ni_stc_writew(dev, mode2, NISTC_AI_MODE2_REG);

 if (cmd->chanlist_len == 1 || devpriv->is_611x || devpriv->is_6143) {

  start_stop_select |= NISTC_AI_STOP_POLARITY |
         NISTC_AI_STOP_SEL(31) |
         NISTC_AI_STOP_SYNC;
 } else {

  start_stop_select |= NISTC_AI_STOP_SEL(19);
 }
 ni_stc_writew(dev, start_stop_select, NISTC_AI_START_STOP_REG);

 devpriv->ai_cmd2 = 0;
 switch (cmd->stop_src) {
 case 133:
  stop_count = cmd->stop_arg - 1;

  if (devpriv->is_611x) {

   stop_count += num_adc_stages_611x;
  }

  ni_stc_writel(dev, stop_count, NISTC_AI_SC_LOADA_REG);

  mode1 |= NISTC_AI_MODE1_START_STOP |
    NISTC_AI_MODE1_RSVD |
    NISTC_AI_MODE1_TRIGGER_ONCE;
  ni_stc_writew(dev, mode1, NISTC_AI_MODE1_REG);

  ni_stc_writew(dev, NISTC_AI_CMD1_SC_LOAD, NISTC_AI_CMD1_REG);

  if (stop_count == 0) {
   devpriv->ai_cmd2 |= NISTC_AI_CMD2_END_ON_EOS;
   interrupt_a_enable |= NISTC_INTA_ENA_AI_STOP;




   if (cmd->chanlist_len > 1)
    start_stop_select |= NISTC_AI_STOP_POLARITY |
           NISTC_AI_STOP_EDGE;
  }
  break;
 case 130:

  ni_stc_writel(dev, 0, NISTC_AI_SC_LOADA_REG);

  mode1 |= NISTC_AI_MODE1_START_STOP |
    NISTC_AI_MODE1_RSVD |
    NISTC_AI_MODE1_CONTINUOUS;
  ni_stc_writew(dev, mode1, NISTC_AI_MODE1_REG);


  ni_stc_writew(dev, NISTC_AI_CMD1_SC_LOAD, NISTC_AI_CMD1_REG);
  break;
 }

 switch (cmd->scan_begin_src) {
 case 128:
  start_stop_select |= NISTC_AI_START_EDGE | NISTC_AI_START_SYNC;
  ni_stc_writew(dev, start_stop_select, NISTC_AI_START_STOP_REG);

  mode2 &= ~NISTC_AI_MODE2_SI_INIT_LOAD_SRC;
  mode2 |= NISTC_AI_MODE2_SI_RELOAD_MODE(0);

  ni_stc_writew(dev, mode2, NISTC_AI_MODE2_REG);


  timer = ni_ns_to_timer(dev, cmd->scan_begin_arg,
           CMDF_ROUND_NEAREST);
  ni_stc_writel(dev, timer, NISTC_AI_SI_LOADA_REG);
  ni_stc_writew(dev, NISTC_AI_CMD1_SI_LOAD, NISTC_AI_CMD1_REG);
  break;
 case 132:
  if (cmd->scan_begin_arg & CR_EDGE)
   start_stop_select |= NISTC_AI_START_EDGE;
  if (cmd->scan_begin_arg & CR_INVERT)
   start_stop_select |= NISTC_AI_START_POLARITY;
  if (cmd->scan_begin_src != cmd->convert_src ||
      (cmd->scan_begin_arg & ~CR_EDGE) !=
      (cmd->convert_arg & ~CR_EDGE))
   start_stop_select |= NISTC_AI_START_SYNC;
  start_stop_select |= NISTC_AI_START_SEL(
   ni_get_reg_value_roffs(CR_CHAN(cmd->scan_begin_arg),
            NI_AI_SampleClock,
            &devpriv->routing_tables, 1));
  ni_stc_writew(dev, start_stop_select, NISTC_AI_START_STOP_REG);
  break;
 }

 switch (cmd->convert_src) {
 case 128:
 case 129:
  if (cmd->convert_arg == 0 || cmd->convert_src == 129)
   timer = 1;
  else
   timer = ni_ns_to_timer(dev, cmd->convert_arg,
            CMDF_ROUND_NEAREST);

  ni_stc_writew(dev, 1, NISTC_AI_SI2_LOADA_REG);
  ni_stc_writew(dev, timer, NISTC_AI_SI2_LOADB_REG);

  mode2 &= ~NISTC_AI_MODE2_SI2_INIT_LOAD_SRC;
  mode2 |= NISTC_AI_MODE2_SI2_RELOAD_MODE;
  ni_stc_writew(dev, mode2, NISTC_AI_MODE2_REG);

  ni_stc_writew(dev, NISTC_AI_CMD1_SI2_LOAD, NISTC_AI_CMD1_REG);

  mode2 |= NISTC_AI_MODE2_SI2_INIT_LOAD_SRC;
  mode2 |= NISTC_AI_MODE2_SI2_RELOAD_MODE;
  ni_stc_writew(dev, mode2, NISTC_AI_MODE2_REG);
  break;
 case 132:
  mode1 |= NISTC_AI_MODE1_CONVERT_SRC(
   ni_get_reg_value_roffs(CR_CHAN(cmd->convert_arg),
            NI_AI_ConvertClock,
            &devpriv->routing_tables, 1));
  if ((cmd->convert_arg & CR_INVERT) == 0)
   mode1 |= NISTC_AI_MODE1_CONVERT_POLARITY;
  ni_stc_writew(dev, mode1, NISTC_AI_MODE1_REG);

  mode2 |= NISTC_AI_MODE2_SC_GATE_ENA |
    NISTC_AI_MODE2_START_STOP_GATE_ENA;
  ni_stc_writew(dev, mode2, NISTC_AI_MODE2_REG);

  break;
 }

 if (dev->irq) {

  interrupt_a_enable |= NISTC_INTA_ENA_AI_ERR |
          NISTC_INTA_ENA_AI_SC_TC;


  interrupt_a_enable |= NISTC_INTA_ENA_AI_FIFO;


  if ((cmd->flags & CMDF_WAKE_EOS) ||
      (devpriv->ai_cmd2 & NISTC_AI_CMD2_END_ON_EOS)) {

   devpriv->aimode = 134;
  } else {
   devpriv->aimode = 136;
  }

  switch (devpriv->aimode) {
  case 136:





   ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_HF,
          NISTC_AI_MODE3_REG);

   break;
  case 135:

   ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_NE,
          NISTC_AI_MODE3_REG);
   break;
  case 134:




   ni_stc_writew(dev, NISTC_AI_MODE3_FIFO_MODE_HF,
          NISTC_AI_MODE3_REG);

   interrupt_a_enable |= NISTC_INTA_ENA_AI_STOP;
   break;
  default:
   break;
  }


  ni_stc_writew(dev, NISTC_INTA_ACK_AI_ALL, NISTC_INTA_ACK_REG);

  ni_set_bits(dev, NISTC_INTA_ENA_REG, interrupt_a_enable, 1);
 } else {

  ni_set_bits(dev, NISTC_INTA_ENA_REG, ~0, 0);


 }


 ni_stc_writew(dev, NISTC_RESET_AI_CFG_END, NISTC_RESET_REG);

 switch (cmd->scan_begin_src) {
 case 128:
  ni_stc_writew(dev, NISTC_AI_CMD1_SI2_ARM |
       NISTC_AI_CMD1_SI_ARM |
       NISTC_AI_CMD1_DIV_ARM |
       NISTC_AI_CMD1_SC_ARM,
         NISTC_AI_CMD1_REG);
  break;
 case 132:
  ni_stc_writew(dev, NISTC_AI_CMD1_SI2_ARM |
       NISTC_AI_CMD1_SI_ARM |
       NISTC_AI_CMD1_DIV_ARM |
       NISTC_AI_CMD1_SC_ARM,
         NISTC_AI_CMD1_REG);
  break;
 }
 if (cmd->start_src == 129) {
  ni_stc_writew(dev, NISTC_AI_CMD2_START1_PULSE |
       devpriv->ai_cmd2,
         NISTC_AI_CMD2_REG);
  s->async->inttrig = ((void*)0);
 } else if (cmd->start_src == 132) {
  s->async->inttrig = ((void*)0);
 } else {
  s->async->inttrig = ni_ai_inttrig;
 }

 return 0;
}
