
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int poll_invalid(struct comedi_device *dev, struct comedi_subdevice *s)
{
 return -EINVAL;
}
