
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_private {int ao_cmd2; scalar_t__ ao_needs_arming; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct ni_private* private; } ;
struct comedi_cmd {unsigned int start_arg; scalar_t__ start_src; } ;
struct TYPE_2__ {int * inttrig; struct comedi_cmd cmd; } ;


 int EINVAL ;
 int NISTC_AO_CMD2_REG ;
 int NISTC_AO_CMD2_START1_PULSE ;
 scalar_t__ TRIG_INT ;
 int ni_ao_arm (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_stc_writew (struct comedi_device*,int,int ) ;

__attribute__((used)) static int ni_ao_inttrig(struct comedi_device *dev,
    struct comedi_subdevice *s,
    unsigned int trig_num)
{
 struct ni_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 int ret;
 if (!(trig_num == cmd->start_arg ||
       (trig_num == 0 && cmd->start_src != TRIG_INT)))
  return -EINVAL;





 s->async->inttrig = ((void*)0);

 if (devpriv->ao_needs_arming) {

  ret = ni_ao_arm(dev, s);
  if (ret)
   return ret;
 }

 ni_stc_writew(dev, NISTC_AO_CMD2_START1_PULSE | devpriv->ao_cmd2,
        NISTC_AO_CMD2_REG);

 return 0;
}
