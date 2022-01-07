
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_device {TYPE_1__* transport; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* set_configfs_dev_params ) (struct se_device*,char const*,size_t) ;} ;


 int stub1 (struct se_device*,char const*,size_t) ;
 struct se_device* to_device (struct config_item*) ;

__attribute__((used)) static ssize_t target_dev_control_store(struct config_item *item,
  const char *page, size_t count)
{
 struct se_device *dev = to_device(item);

 return dev->transport->set_configfs_dev_params(dev, page, count);
}
