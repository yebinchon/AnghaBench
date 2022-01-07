
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; int name; } ;
struct TYPE_4__ {TYPE_1__ attr; int store; int show; } ;
struct iio_dev_attr {int address; TYPE_2__ dev_attr; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ad7280_show_balance_timer ;
 int ad7280_store_balance_timer ;
 int devm_kasprintf (struct device*,int ,char*,int,int) ;

__attribute__((used)) static int ad7280_balance_timer_attr_init(struct iio_dev_attr *attr,
       struct device *dev, int addr, int i)
{
 attr->address = addr;
 attr->dev_attr.attr.mode = 0644;
 attr->dev_attr.show = ad7280_show_balance_timer;
 attr->dev_attr.store = ad7280_store_balance_timer;
 attr->dev_attr.attr.name = devm_kasprintf(dev, GFP_KERNEL,
        "in%d-in%d_balance_timer",
        i, i + 1);
 if (!attr->dev_attr.attr.name)
  return -ENOMEM;

 return 0;
}
