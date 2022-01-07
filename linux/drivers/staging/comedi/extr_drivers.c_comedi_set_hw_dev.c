
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct comedi_device {struct device* hw_dev; } ;


 int EEXIST ;
 struct device* get_device (struct device*) ;

int comedi_set_hw_dev(struct comedi_device *dev, struct device *hw_dev)
{
 if (hw_dev == dev->hw_dev)
  return 0;
 if (dev->hw_dev)
  return -EEXIST;
 dev->hw_dev = get_device(hw_dev);
 return 0;
}
