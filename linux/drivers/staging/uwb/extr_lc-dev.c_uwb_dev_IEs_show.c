
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev {int bce; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct uwb_dev* to_uwb_dev (struct device*) ;
 int uwb_bce_print_IEs (struct uwb_dev*,int ,char*,int ) ;

__attribute__((used)) static ssize_t uwb_dev_IEs_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);

 return uwb_bce_print_IEs(uwb_dev, uwb_dev->bce, buf, PAGE_SIZE);
}
