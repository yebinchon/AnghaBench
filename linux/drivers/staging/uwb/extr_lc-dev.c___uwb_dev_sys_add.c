
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device* parent; } ;
struct uwb_dev {struct device dev; } ;


 int dev_set_drvdata (struct device*,struct uwb_dev*) ;
 int device_add (struct device*) ;

__attribute__((used)) static int __uwb_dev_sys_add(struct uwb_dev *uwb_dev, struct device *parent_dev)
{
 struct device *dev;

 dev = &uwb_dev->dev;
 dev->parent = parent_dev;
 dev_set_drvdata(dev, uwb_dev);

 return device_add(dev);
}
