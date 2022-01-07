
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int * hw_dev; } ;


 int put_device (int *) ;

__attribute__((used)) static void comedi_clear_hw_dev(struct comedi_device *dev)
{
 put_device(dev->hw_dev);
 dev->hw_dev = ((void*)0);
}
