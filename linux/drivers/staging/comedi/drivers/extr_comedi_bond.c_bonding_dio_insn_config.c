
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct comedi_bond_private* private; } ;
struct comedi_bond_private {struct bonded_device** devs; } ;
struct bonded_device {unsigned int nchans; int subdev; int dev; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;



 int comedi_dio_config (int ,int ,unsigned int,unsigned int) ;
 int comedi_dio_get_config (int ,int ,unsigned int,unsigned int*) ;

__attribute__((used)) static int bonding_dio_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn, unsigned int *data)
{
 struct comedi_bond_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 int ret;
 struct bonded_device *bdev;
 struct bonded_device **devs;




 devs = devpriv->devs;
 for (bdev = *devs++; chan >= bdev->nchans; bdev = *devs++)
  chan -= bdev->nchans;
 switch (data[0]) {
 case 129:
 case 130:
  ret = comedi_dio_config(bdev->dev, bdev->subdev, chan, data[0]);
  break;
 case 128:
  ret = comedi_dio_get_config(bdev->dev, bdev->subdev, chan,
         &data[1]);
  break;
 default:
  ret = -EINVAL;
  break;
 }
 if (ret >= 0)
  ret = insn->n;
 return ret;
}
