
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int reset_atmio16d (struct comedi_device*) ;

__attribute__((used)) static int atmio16d_ai_cancel(struct comedi_device *dev,
         struct comedi_subdevice *s)
{
 reset_atmio16d(dev);

 return 0;
}
