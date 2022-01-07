
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct se_dev_attrib {int block_size; int max_bytes_per_io; int hw_max_sectors; TYPE_1__* da_dev; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int export_count; } ;


 int EINVAL ;
 int kstrtou32 (char const*,int ,int*) ;
 int pr_debug (char*,TYPE_1__*,int) ;
 int pr_err (char*,TYPE_1__*,int) ;
 struct se_dev_attrib* to_attrib (struct config_item*) ;

__attribute__((used)) static ssize_t block_size_store(struct config_item *item,
  const char *page, size_t count)
{
 struct se_dev_attrib *da = to_attrib(item);
 u32 val;
 int ret;

 ret = kstrtou32(page, 0, &val);
 if (ret < 0)
  return ret;

 if (da->da_dev->export_count) {
  pr_err("dev[%p]: Unable to change SE Device block_size"
   " while export_count is %d\n",
   da->da_dev, da->da_dev->export_count);
  return -EINVAL;
 }

 if (val != 512 && val != 1024 && val != 2048 && val != 4096) {
  pr_err("dev[%p]: Illegal value for block_device: %u"
   " for SE device, must be 512, 1024, 2048 or 4096\n",
   da->da_dev, val);
  return -EINVAL;
 }

 da->block_size = val;
 if (da->max_bytes_per_io)
  da->hw_max_sectors = da->max_bytes_per_io / val;

 pr_debug("dev[%p]: SE Device block_size changed to %u\n",
   da->da_dev, val);
 return count;
}
