
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_info {char* name; } ;
struct tcmu_hba {int host_id; } ;
struct tcmu_dev {int name; scalar_t__* dev_config; struct uio_info uio_info; TYPE_1__* hba; } ;
struct TYPE_2__ {struct tcmu_hba* hba_ptr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 char* kasprintf (int ,char*,int ,int ,...) ;
 int kfree (char*) ;

__attribute__((used)) static int tcmu_update_uio_info(struct tcmu_dev *udev)
{
 struct tcmu_hba *hba = udev->hba->hba_ptr;
 struct uio_info *info;
 char *str;

 info = &udev->uio_info;

 if (udev->dev_config[0])
  str = kasprintf(GFP_KERNEL, "tcm-user/%u/%s/%s", hba->host_id,
    udev->name, udev->dev_config);
 else
  str = kasprintf(GFP_KERNEL, "tcm-user/%u/%s", hba->host_id,
    udev->name);
 if (!str)
  return -ENOMEM;


 kfree(info->name);
 info->name = str;

 return 0;
}
