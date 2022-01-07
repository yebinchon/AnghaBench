
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int slim_remove_device (int ) ;
 int to_slim_device (struct device*) ;

__attribute__((used)) static int slim_ctrl_remove_device(struct device *dev, void *null)
{
 slim_remove_device(to_slim_device(dev));
 return 0;
}
