
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int (* cancel ) (struct comedi_device*,struct comedi_subdevice*) ;} ;
struct comedi_device {int mutex; } ;


 scalar_t__ comedi_is_subdevice_running (struct comedi_subdevice*) ;
 int do_become_nonbusy (struct comedi_device*,struct comedi_subdevice*) ;
 int lockdep_assert_held (int *) ;
 int stub1 (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static int do_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 int ret = 0;

 lockdep_assert_held(&dev->mutex);
 if (comedi_is_subdevice_running(s) && s->cancel)
  ret = s->cancel(dev, s);

 do_become_nonbusy(dev, s);

 return ret;
}
