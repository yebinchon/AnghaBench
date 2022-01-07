
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct a2150_private* private; } ;
struct a2150_private {int config_bits; } ;


 int CHANNEL_BITS (int) ;
 int CHANNEL_MASK ;

__attribute__((used)) static int a2150_set_chanlist(struct comedi_device *dev,
         unsigned int start_channel,
         unsigned int num_channels)
{
 struct a2150_private *devpriv = dev->private;

 if (start_channel + num_channels > 4)
  return -1;

 devpriv->config_bits &= ~CHANNEL_MASK;

 switch (num_channels) {
 case 1:
  devpriv->config_bits |= CHANNEL_BITS(0x4 | start_channel);
  break;
 case 2:
  if (start_channel == 0)
   devpriv->config_bits |= CHANNEL_BITS(0x2);
  else if (start_channel == 2)
   devpriv->config_bits |= CHANNEL_BITS(0x3);
  else
   return -1;
  break;
 case 4:
  devpriv->config_bits |= CHANNEL_BITS(0x1);
  break;
 default:
  return -1;
 }

 return 0;
}
