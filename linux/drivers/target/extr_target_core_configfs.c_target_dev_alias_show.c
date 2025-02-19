
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dev_flags; char* dev_alias; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int DF_USING_ALIAS ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;
 struct se_device* to_device (struct config_item*) ;

__attribute__((used)) static ssize_t target_dev_alias_show(struct config_item *item, char *page)
{
 struct se_device *dev = to_device(item);

 if (!(dev->dev_flags & DF_USING_ALIAS))
  return 0;

 return snprintf(page, PAGE_SIZE, "%s\n", dev->dev_alias);
}
