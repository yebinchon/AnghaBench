
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {unsigned int (* get_valid_routes ) (struct comedi_device*,unsigned int,unsigned int*) ;int mutex; } ;


 int lockdep_assert_held (int *) ;
 unsigned int stub1 (struct comedi_device*,unsigned int,unsigned int*) ;

__attribute__((used)) static int get_valid_routes(struct comedi_device *dev, unsigned int *data)
{
 lockdep_assert_held(&dev->mutex);
 data[1] = dev->get_valid_routes(dev, data[1], data + 2);
 return 0;
}
