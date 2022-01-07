
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct se_dev_attrib {int force_pr_aptpl; TYPE_1__* da_dev; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ export_count; } ;


 int EINVAL ;
 int pr_debug (char*,TYPE_1__*,int) ;
 int pr_err (char*,TYPE_1__*,scalar_t__) ;
 int strtobool (char const*,int*) ;
 struct se_dev_attrib* to_attrib (struct config_item*) ;

__attribute__((used)) static ssize_t force_pr_aptpl_store(struct config_item *item,
  const char *page, size_t count)
{
 struct se_dev_attrib *da = to_attrib(item);
 bool flag;
 int ret;

 ret = strtobool(page, &flag);
 if (ret < 0)
  return ret;
 if (da->da_dev->export_count) {
  pr_err("dev[%p]: Unable to set force_pr_aptpl while"
         " export_count is %d\n",
         da->da_dev, da->da_dev->export_count);
  return -EINVAL;
 }

 da->force_pr_aptpl = flag;
 pr_debug("dev[%p]: SE Device force_pr_aptpl: %d\n", da->da_dev, flag);
 return count;
}
