
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int class_dev; struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {unsigned int calib_src; } ;


 int EINVAL ;

 int dev_err (int ,char*,unsigned int) ;

__attribute__((used)) static int cb_pcidas_ai_insn_config(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 struct cb_pcidas_private *devpriv = dev->private;
 int id = data[0];
 unsigned int source = data[1];

 switch (id) {
 case 128:
  if (source >= 8) {
   dev_err(dev->class_dev,
    "invalid calibration source: %i\n",
    source);
   return -EINVAL;
  }
  devpriv->calib_src = source;
  break;
 default:
  return -EINVAL;
 }
 return insn->n;
}
