
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nidio96_private {int OP_MODEBits; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ mmio; struct nidio96_private* private; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct TYPE_2__ {int * inttrig; struct comedi_cmd cmd; } ;


 int EINVAL ;
 scalar_t__ OP_MODE ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int ni_pcidio_inttrig(struct comedi_device *dev,
        struct comedi_subdevice *s,
        unsigned int trig_num)
{
 struct nidio96_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;

 if (trig_num != cmd->start_arg)
  return -EINVAL;

 writeb(devpriv->OP_MODEBits, dev->mmio + OP_MODE);
 s->async->inttrig = ((void*)0);

 return 1;
}
