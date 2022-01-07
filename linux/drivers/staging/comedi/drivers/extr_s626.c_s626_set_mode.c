
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct comedi_device {int dummy; } ;


 int s626_set_mode_a (struct comedi_device*,unsigned int,int ,int ) ;
 int s626_set_mode_b (struct comedi_device*,unsigned int,int ,int ) ;

__attribute__((used)) static void s626_set_mode(struct comedi_device *dev,
     unsigned int chan,
     u16 setup, u16 disable_int_src)
{
 if (chan < 3)
  s626_set_mode_a(dev, chan, setup, disable_int_src);
 else
  s626_set_mode_b(dev, chan, setup, disable_int_src);
}
