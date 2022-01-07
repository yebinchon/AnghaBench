
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct each_dev_arg {int (* fn ) (int ,int ) ;int data; } ;
struct device {int dummy; } ;


 int is_usb_device (struct device*) ;
 int stub1 (int ,int ) ;
 int to_usb_device (struct device*) ;

__attribute__((used)) static int __each_dev(struct device *dev, void *data)
{
 struct each_dev_arg *arg = (struct each_dev_arg *)data;


 if (!is_usb_device(dev))
  return 0;

 return arg->fn(to_usb_device(dev), arg->data);
}
