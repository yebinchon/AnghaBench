
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int substring_t ;
struct se_device {TYPE_1__* se_hba; } ;
struct pscsi_hba_virt {int phv_host_id; int phv_mode; } ;
struct pscsi_dev_virt {int pdv_host_id; int pdv_channel_id; int pdv_target_id; int pdv_lun_id; int pdv_flags; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct pscsi_hba_virt* hba_ptr; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_OPT_ARGS ;




 int PDF_HAS_CHANNEL_ID ;
 int PDF_HAS_LUN_ID ;
 int PDF_HAS_TARGET_ID ;
 int PDF_HAS_VIRT_HOST_ID ;
 int PHV_LLD_SCSI_HOST_NO ;
 struct pscsi_dev_virt* PSCSI_DEV (struct se_device*) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int match_int (int *,int*) ;
 int match_token (char*,int ,int *) ;
 int pr_debug (char*,int ,int) ;
 int pr_err (char*,int ) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static ssize_t pscsi_set_configfs_dev_params(struct se_device *dev,
  const char *page, ssize_t count)
{
 struct pscsi_dev_virt *pdv = PSCSI_DEV(dev);
 struct pscsi_hba_virt *phv = dev->se_hba->hba_ptr;
 char *orig, *ptr, *opts;
 substring_t args[MAX_OPT_ARGS];
 int ret = 0, arg, token;

 opts = kstrdup(page, GFP_KERNEL);
 if (!opts)
  return -ENOMEM;

 orig = opts;

 while ((ptr = strsep(&opts, ",\n")) != ((void*)0)) {
  if (!*ptr)
   continue;

  token = match_token(ptr, tokens, args);
  switch (token) {
  case 130:
   if (phv->phv_mode == PHV_LLD_SCSI_HOST_NO) {
    pr_err("PSCSI[%d]: Unable to accept"
     " scsi_host_id while phv_mode =="
     " PHV_LLD_SCSI_HOST_NO\n",
     phv->phv_host_id);
    ret = -EINVAL;
    goto out;
   }
   ret = match_int(args, &arg);
   if (ret)
    goto out;
   pdv->pdv_host_id = arg;
   pr_debug("PSCSI[%d]: Referencing SCSI Host ID:"
    " %d\n", phv->phv_host_id, pdv->pdv_host_id);
   pdv->pdv_flags |= PDF_HAS_VIRT_HOST_ID;
   break;
  case 131:
   ret = match_int(args, &arg);
   if (ret)
    goto out;
   pdv->pdv_channel_id = arg;
   pr_debug("PSCSI[%d]: Referencing SCSI Channel"
    " ID: %d\n", phv->phv_host_id,
    pdv->pdv_channel_id);
   pdv->pdv_flags |= PDF_HAS_CHANNEL_ID;
   break;
  case 128:
   ret = match_int(args, &arg);
   if (ret)
    goto out;
   pdv->pdv_target_id = arg;
   pr_debug("PSCSI[%d]: Referencing SCSI Target"
    " ID: %d\n", phv->phv_host_id,
    pdv->pdv_target_id);
   pdv->pdv_flags |= PDF_HAS_TARGET_ID;
   break;
  case 129:
   ret = match_int(args, &arg);
   if (ret)
    goto out;
   pdv->pdv_lun_id = arg;
   pr_debug("PSCSI[%d]: Referencing SCSI LUN ID:"
    " %d\n", phv->phv_host_id, pdv->pdv_lun_id);
   pdv->pdv_flags |= PDF_HAS_LUN_ID;
   break;
  default:
   break;
  }
 }

out:
 kfree(orig);
 return (!ret) ? count : ret;
}
