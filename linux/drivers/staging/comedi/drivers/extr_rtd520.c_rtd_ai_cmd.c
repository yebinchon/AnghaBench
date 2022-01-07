
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtd_private {int fifosz; int xfer_count; int ai_count; int flags; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ mmio; struct rtd_private* private; } ;
struct comedi_cmd {int chanlist_len; int scan_begin_src; int flags; int scan_begin_arg; int stop_src; int stop_arg; int convert_src; int convert_arg; int chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int CMDF_ROUND_NEAREST ;
 int CMDF_WAKE_EOS ;
 int DIV_ROUND_UP (int,int) ;
 int IRQM_ADC_ABOUT_CNT ;
 scalar_t__ LAS0_ACNT ;
 scalar_t__ LAS0_ACNT_STOP_ENABLE ;
 scalar_t__ LAS0_ADC_CONVERSION ;
 scalar_t__ LAS0_ADC_FIFO_CLEAR ;
 scalar_t__ LAS0_BCLK ;
 scalar_t__ LAS0_BURST_START ;
 scalar_t__ LAS0_CLEAR ;
 scalar_t__ LAS0_IT ;
 scalar_t__ LAS0_OVERRUN ;
 scalar_t__ LAS0_PACER ;
 scalar_t__ LAS0_PACER_SELECT ;
 scalar_t__ LAS0_PACER_START ;
 scalar_t__ LAS0_PACER_STOP ;
 scalar_t__ LAS0_PCLK ;
 int SEND_EOS ;
 int TRANS_TARGET_PERIOD ;




 int readl (scalar_t__) ;
 int readw (scalar_t__) ;
 int rtd_load_channelgain_list (struct comedi_device*,int,int ) ;
 int rtd_ns_to_timer (int*,int ) ;
 int writel (int,scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int rtd_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct rtd_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 int timer;



 writel(0, dev->mmio + LAS0_PACER_STOP);
 writel(0, dev->mmio + LAS0_PACER);
 writel(0, dev->mmio + LAS0_ADC_CONVERSION);
 writew(0, dev->mmio + LAS0_IT);
 writel(0, dev->mmio + LAS0_ADC_FIFO_CLEAR);
 writel(0, dev->mmio + LAS0_OVERRUN);



 rtd_load_channelgain_list(dev, cmd->chanlist_len, cmd->chanlist);


 if (cmd->chanlist_len > 1) {

  writel(0, dev->mmio + LAS0_PACER_START);

  writel(1, dev->mmio + LAS0_BURST_START);

  writel(2, dev->mmio + LAS0_ADC_CONVERSION);
 } else {

  writel(0, dev->mmio + LAS0_PACER_START);

  writel(1, dev->mmio + LAS0_ADC_CONVERSION);
 }
 writel((devpriv->fifosz / 2 - 1) & 0xffff, dev->mmio + LAS0_ACNT);

 if (cmd->scan_begin_src == 128) {


  if (cmd->flags & CMDF_WAKE_EOS) {





   devpriv->xfer_count = cmd->chanlist_len;
   devpriv->flags |= SEND_EOS;
  } else {

   devpriv->xfer_count =
       (TRANS_TARGET_PERIOD * cmd->chanlist_len) /
       cmd->scan_begin_arg;
   if (devpriv->xfer_count < cmd->chanlist_len) {

    devpriv->xfer_count = cmd->chanlist_len;
   } else {
    devpriv->xfer_count =
        DIV_ROUND_UP(devpriv->xfer_count,
       cmd->chanlist_len);
    devpriv->xfer_count *= cmd->chanlist_len;
   }
   devpriv->flags |= SEND_EOS;
  }
  if (devpriv->xfer_count >= (devpriv->fifosz / 2)) {

   devpriv->xfer_count = 0;
   devpriv->flags &= ~SEND_EOS;
  } else {

   writel((devpriv->xfer_count - 1) & 0xffff,
          dev->mmio + LAS0_ACNT);
  }
 } else {
  devpriv->xfer_count = 0;
  devpriv->flags &= ~SEND_EOS;
 }

 writel(1, dev->mmio + LAS0_PACER_SELECT);

 writel(1, dev->mmio + LAS0_ACNT_STOP_ENABLE);




 switch (cmd->stop_src) {
 case 131:
  devpriv->ai_count = cmd->stop_arg * cmd->chanlist_len;
  if ((devpriv->xfer_count > 0) &&
      (devpriv->xfer_count > devpriv->ai_count)) {
   devpriv->xfer_count = devpriv->ai_count;
  }
  break;

 case 129:
  devpriv->ai_count = -1;
  break;
 }


 switch (cmd->scan_begin_src) {
 case 128:
  timer = rtd_ns_to_timer(&cmd->scan_begin_arg,
     CMDF_ROUND_NEAREST);

  writel(timer & 0xffffff, dev->mmio + LAS0_PCLK);

  break;

 case 130:

  writel(1, dev->mmio + LAS0_PACER_START);
  break;
 }


 switch (cmd->convert_src) {
 case 128:
  if (cmd->chanlist_len > 1) {

   timer = rtd_ns_to_timer(&cmd->convert_arg,
      CMDF_ROUND_NEAREST);

   writel(timer & 0x3ff, dev->mmio + LAS0_BCLK);
  }

  break;

 case 130:

  writel(2, dev->mmio + LAS0_BURST_START);
  break;
 }






 writew(~0, dev->mmio + LAS0_CLEAR);
 readw(dev->mmio + LAS0_CLEAR);



 writew(IRQM_ADC_ABOUT_CNT, dev->mmio + LAS0_IT);



 readl(dev->mmio + LAS0_PACER);
 return 0;
}
