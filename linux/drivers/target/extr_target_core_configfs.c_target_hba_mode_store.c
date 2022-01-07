
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_hba {int hba_flags; TYPE_2__* backend; scalar_t__ dev_count; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* pmode_enable_hba ) (struct se_hba*,unsigned long) ;} ;


 int EINVAL ;
 int HBA_FLAGS_PSCSI_MODE ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 int pr_err (char*,...) ;
 int stub1 (struct se_hba*,unsigned long) ;
 struct se_hba* to_hba (struct config_item*) ;

__attribute__((used)) static ssize_t target_hba_mode_store(struct config_item *item,
  const char *page, size_t count)
{
 struct se_hba *hba = to_hba(item);
 unsigned long mode_flag;
 int ret;

 if (hba->backend->ops->pmode_enable_hba == ((void*)0))
  return -EINVAL;

 ret = kstrtoul(page, 0, &mode_flag);
 if (ret < 0) {
  pr_err("Unable to extract hba mode flag: %d\n", ret);
  return ret;
 }

 if (hba->dev_count) {
  pr_err("Unable to set hba_mode with active devices\n");
  return -EINVAL;
 }

 ret = hba->backend->ops->pmode_enable_hba(hba, mode_flag);
 if (ret < 0)
  return -EINVAL;
 if (ret > 0)
  hba->hba_flags |= HBA_FLAGS_PSCSI_MODE;
 else if (ret == 0)
  hba->hba_flags &= ~HBA_FLAGS_PSCSI_MODE;

 return count;
}
