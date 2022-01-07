
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cg_item; } ;
struct se_hba {TYPE_1__ hba_group; } ;
struct TYPE_4__ {int cg_item; } ;
struct se_device {char* dev_alias; TYPE_2__ dev_group; int dev_flags; struct se_hba* se_hba; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int DF_USING_ALIAS ;
 int EINVAL ;
 int SE_DEV_ALIAS_LEN ;
 int config_item_name (int *) ;
 int pr_debug (char*,int ,int ,char*) ;
 int pr_err (char*,int,int) ;
 int snprintf (char*,int,char*,char const*) ;
 struct se_device* to_device (struct config_item*) ;

__attribute__((used)) static ssize_t target_dev_alias_store(struct config_item *item,
  const char *page, size_t count)
{
 struct se_device *dev = to_device(item);
 struct se_hba *hba = dev->se_hba;
 ssize_t read_bytes;

 if (count > (SE_DEV_ALIAS_LEN-1)) {
  pr_err("alias count: %d exceeds"
   " SE_DEV_ALIAS_LEN-1: %u\n", (int)count,
   SE_DEV_ALIAS_LEN-1);
  return -EINVAL;
 }

 read_bytes = snprintf(&dev->dev_alias[0], SE_DEV_ALIAS_LEN, "%s", page);
 if (!read_bytes)
  return -EINVAL;
 if (dev->dev_alias[read_bytes - 1] == '\n')
  dev->dev_alias[read_bytes - 1] = '\0';

 dev->dev_flags |= DF_USING_ALIAS;

 pr_debug("Target_Core_ConfigFS: %s/%s set alias: %s\n",
  config_item_name(&hba->hba_group.cg_item),
  config_item_name(&dev->dev_group.cg_item),
  dev->dev_alias);

 return read_bytes;
}
