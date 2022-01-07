
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct se_dev_attrib {int unmap_zeroes_data; TYPE_1__* da_dev; int max_unmap_block_desc_count; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ export_count; } ;


 int EINVAL ;
 int ENOSYS ;
 int pr_debug (char*,TYPE_1__*,int) ;
 int pr_err (char*,TYPE_1__*,...) ;
 int strtobool (char const*,int*) ;
 struct se_dev_attrib* to_attrib (struct config_item*) ;

__attribute__((used)) static ssize_t unmap_zeroes_data_store(struct config_item *item,
  const char *page, size_t count)
{
 struct se_dev_attrib *da = to_attrib(item);
 bool flag;
 int ret;

 ret = strtobool(page, &flag);
 if (ret < 0)
  return ret;

 if (da->da_dev->export_count) {
  pr_err("dev[%p]: Unable to change SE Device"
         " unmap_zeroes_data while export_count is %d\n",
         da->da_dev, da->da_dev->export_count);
  return -EINVAL;
 }




 if (flag && !da->max_unmap_block_desc_count) {
  pr_err("dev[%p]: Thin Provisioning LBPRZ will not be set"
         " because max_unmap_block_desc_count is zero\n",
         da->da_dev);
  return -ENOSYS;
 }
 da->unmap_zeroes_data = flag;
 pr_debug("dev[%p]: SE Device Thin Provisioning LBPRZ bit: %d\n",
   da->da_dev, flag);
 return count;
}
