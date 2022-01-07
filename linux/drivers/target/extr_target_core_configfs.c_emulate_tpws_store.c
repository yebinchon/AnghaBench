
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_dev_attrib {int emulate_tpws; int da_dev; int max_unmap_block_desc_count; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int ENOSYS ;
 int pr_debug (char*,int ,int) ;
 int pr_err (char*) ;
 int strtobool (char const*,int*) ;
 struct se_dev_attrib* to_attrib (struct config_item*) ;

__attribute__((used)) static ssize_t emulate_tpws_store(struct config_item *item,
  const char *page, size_t count)
{
 struct se_dev_attrib *da = to_attrib(item);
 bool flag;
 int ret;

 ret = strtobool(page, &flag);
 if (ret < 0)
  return ret;





 if (flag && !da->max_unmap_block_desc_count) {
  pr_err("Generic Block Discard not supported\n");
  return -ENOSYS;
 }

 da->emulate_tpws = flag;
 pr_debug("dev[%p]: SE Device Thin Provisioning WRITE_SAME: %d\n",
    da->da_dev, flag);
 return count;
}
