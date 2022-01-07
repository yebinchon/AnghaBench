
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct jr3_pci_subdev_private {scalar_t__ state; TYPE_1__* sensor; } ;
struct comedi_subdevice {struct jr3_pci_subdev_private* private; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int errors; } ;


 unsigned int CR_CHAN (int ) ;
 int EAGAIN ;
 int get_u16 (int *) ;
 unsigned int jr3_pci_ai_read_chan (struct comedi_device*,struct comedi_subdevice*,unsigned int) ;
 int sensor_change ;
 scalar_t__ state_jr3_done ;
 scalar_t__ state_jr3_poll ;
 int watch_dog ;
 int watch_dog2 ;

__attribute__((used)) static int jr3_pci_ai_insn_read(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 struct jr3_pci_subdev_private *spriv = s->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 u16 errors;
 int i;

 errors = get_u16(&spriv->sensor->errors);
 if (spriv->state != state_jr3_done ||
     (errors & (watch_dog | watch_dog2 | sensor_change))) {

  if (spriv->state == state_jr3_done) {

   spriv->state = state_jr3_poll;
  }
  return -EAGAIN;
 }

 for (i = 0; i < insn->n; i++)
  data[i] = jr3_pci_ai_read_chan(dev, s, chan);

 return insn->n;
}
