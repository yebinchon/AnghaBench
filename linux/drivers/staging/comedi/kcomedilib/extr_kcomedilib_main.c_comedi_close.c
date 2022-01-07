
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int comedi_dev_put (struct comedi_device*) ;

int comedi_close(struct comedi_device *dev)
{
 comedi_dev_put(dev);
 return 0;
}
