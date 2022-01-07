
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 int target_dev_configured (struct se_device*) ;
 struct se_device* to_device (struct config_item*) ;

__attribute__((used)) static ssize_t target_dev_enable_show(struct config_item *item, char *page)
{
 struct se_device *dev = to_device(item);

 return snprintf(page, PAGE_SIZE, "%d\n", target_dev_configured(dev));
}
