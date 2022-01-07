
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc624_private {void* ai_speed; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int insn_read; int * range_table; int type; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct comedi_devconfig {int* options; } ;


 int COMEDI_SUBD_AI ;
 int ENOMEM ;
 void* MPC624_SPEED_110_HZ ;
 void* MPC624_SPEED_13_75_HZ ;
 void* MPC624_SPEED_1_76_KHZ ;
 void* MPC624_SPEED_220_HZ ;
 void* MPC624_SPEED_27_5_HZ ;
 void* MPC624_SPEED_3_52_KHZ ;
 void* MPC624_SPEED_440_HZ ;
 void* MPC624_SPEED_55_HZ ;
 void* MPC624_SPEED_6_875_HZ ;
 void* MPC624_SPEED_880_HZ ;
 int SDF_DIFF ;
 int SDF_READABLE ;
 struct mpc624_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_alloc_subdevices (struct comedi_device*,int) ;
 int comedi_request_region (struct comedi_device*,int,int) ;
 int mpc624_ai_insn_read ;
 int range_mpc624_bipolar1 ;
 int range_mpc624_bipolar10 ;

__attribute__((used)) static int mpc624_attach(struct comedi_device *dev, struct comedi_devconfig *it)
{
 struct mpc624_private *devpriv;
 struct comedi_subdevice *s;
 int ret;

 ret = comedi_request_region(dev, it->options[0], 0x10);
 if (ret)
  return ret;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 switch (it->options[1]) {
 case 0:
  devpriv->ai_speed = MPC624_SPEED_3_52_KHZ;
  break;
 case 1:
  devpriv->ai_speed = MPC624_SPEED_1_76_KHZ;
  break;
 case 2:
  devpriv->ai_speed = MPC624_SPEED_880_HZ;
  break;
 case 3:
  devpriv->ai_speed = MPC624_SPEED_440_HZ;
  break;
 case 4:
  devpriv->ai_speed = MPC624_SPEED_220_HZ;
  break;
 case 5:
  devpriv->ai_speed = MPC624_SPEED_110_HZ;
  break;
 case 6:
  devpriv->ai_speed = MPC624_SPEED_55_HZ;
  break;
 case 7:
  devpriv->ai_speed = MPC624_SPEED_27_5_HZ;
  break;
 case 8:
  devpriv->ai_speed = MPC624_SPEED_13_75_HZ;
  break;
 case 9:
  devpriv->ai_speed = MPC624_SPEED_6_875_HZ;
  break;
 default:
  devpriv->ai_speed = MPC624_SPEED_3_52_KHZ;
 }

 ret = comedi_alloc_subdevices(dev, 1);
 if (ret)
  return ret;


 s = &dev->subdevices[0];
 s->type = COMEDI_SUBD_AI;
 s->subdev_flags = SDF_READABLE | SDF_DIFF;
 s->n_chan = 4;
 s->maxdata = 0x3fffffff;
 s->range_table = (it->options[1] == 0) ? &range_mpc624_bipolar1
      : &range_mpc624_bipolar10;
 s->insn_read = mpc624_ai_insn_read;

 return 0;
}
