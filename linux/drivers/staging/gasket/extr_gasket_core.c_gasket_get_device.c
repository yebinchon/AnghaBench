
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_dev {struct device* dev; } ;
struct device {int dummy; } ;



struct device *gasket_get_device(struct gasket_dev *dev)
{
 return dev->dev;
}
