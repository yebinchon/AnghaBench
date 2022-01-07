
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_private {scalar_t__ aimode; int ai_cmd2; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct ni_private* private; } ;
struct TYPE_2__ {int events; } ;


 scalar_t__ AIMODE_SCAN ;
 int COMEDI_CB_EOS ;
 int NISTC_AI_CMD2_END_ON_EOS ;
 int ni_handle_fifo_dregs (struct comedi_device*) ;
 int ni_sync_ai_dma (struct comedi_device*) ;
 int shutdown_ai_command (struct comedi_device*) ;
 int udelay (int) ;

__attribute__((used)) static void ni_handle_eos(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct ni_private *devpriv = dev->private;

 if (devpriv->aimode == AIMODE_SCAN) {
  ni_handle_fifo_dregs(dev);
  s->async->events |= COMEDI_CB_EOS;

 }

 if (devpriv->ai_cmd2 & NISTC_AI_CMD2_END_ON_EOS)
  shutdown_ai_command(dev);
}
