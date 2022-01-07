
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ipr_std_inq_data {int dummy; } ;
struct TYPE_6__ {int scsi_lun; } ;
struct ipr_resource_entry {int flags; int type; int res_handle; int qmodel; int std_inq_data; int * res_path; TYPE_5__* ioa_cfg; scalar_t__ sdev; TYPE_1__ dev_lun; int dev_id; void* res_flags; } ;
struct TYPE_9__ {TYPE_3__* cfgte; TYPE_2__* cfgte64; } ;
struct ipr_config_table_entry_wrapper {TYPE_4__ u; } ;
typedef int buffer ;
struct TYPE_10__ {scalar_t__ sis64; } ;
struct TYPE_8__ {int flags; int rsvd_subtype; unsigned int proto; int res_handle; int std_inq_data; } ;
struct TYPE_7__ {int res_type; unsigned int proto; int res_path; int lun; int dev_id; int res_handle; int std_inq_data; int res_flags; int flags; } ;


 int IPR_IS_IOA_RESOURCE ;
 int IPR_MAX_RES_PATH_LENGTH ;
 int IPR_QUEUEING_MODEL (struct ipr_resource_entry*) ;
 int IPR_QUEUEING_MODEL64 (struct ipr_resource_entry*) ;
 int IPR_RES_TYPE_IOAFP ;
 int KERN_INFO ;
 void* be16_to_cpu (int ) ;
 int ipr_format_res_path (TYPE_5__*,int *,char*,int) ;
 int ipr_update_ata_class (struct ipr_resource_entry*,unsigned int) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int sdev_printk (int ,scalar_t__,char*,int ) ;

__attribute__((used)) static void ipr_update_res_entry(struct ipr_resource_entry *res,
     struct ipr_config_table_entry_wrapper *cfgtew)
{
 char buffer[IPR_MAX_RES_PATH_LENGTH];
 unsigned int proto;
 int new_path = 0;

 if (res->ioa_cfg->sis64) {
  res->flags = be16_to_cpu(cfgtew->u.cfgte64->flags);
  res->res_flags = be16_to_cpu(cfgtew->u.cfgte64->res_flags);
  res->type = cfgtew->u.cfgte64->res_type;

  memcpy(&res->std_inq_data, &cfgtew->u.cfgte64->std_inq_data,
   sizeof(struct ipr_std_inq_data));

  res->qmodel = IPR_QUEUEING_MODEL64(res);
  proto = cfgtew->u.cfgte64->proto;
  res->res_handle = cfgtew->u.cfgte64->res_handle;
  res->dev_id = cfgtew->u.cfgte64->dev_id;

  memcpy(&res->dev_lun.scsi_lun, &cfgtew->u.cfgte64->lun,
   sizeof(res->dev_lun.scsi_lun));

  if (memcmp(res->res_path, &cfgtew->u.cfgte64->res_path,
     sizeof(res->res_path))) {
   memcpy(res->res_path, &cfgtew->u.cfgte64->res_path,
    sizeof(res->res_path));
   new_path = 1;
  }

  if (res->sdev && new_path)
   sdev_printk(KERN_INFO, res->sdev, "Resource path: %s\n",
        ipr_format_res_path(res->ioa_cfg,
     res->res_path, buffer, sizeof(buffer)));
 } else {
  res->flags = cfgtew->u.cfgte->flags;
  if (res->flags & IPR_IS_IOA_RESOURCE)
   res->type = IPR_RES_TYPE_IOAFP;
  else
   res->type = cfgtew->u.cfgte->rsvd_subtype & 0x0f;

  memcpy(&res->std_inq_data, &cfgtew->u.cfgte->std_inq_data,
   sizeof(struct ipr_std_inq_data));

  res->qmodel = IPR_QUEUEING_MODEL(res);
  proto = cfgtew->u.cfgte->proto;
  res->res_handle = cfgtew->u.cfgte->res_handle;
 }

 ipr_update_ata_class(res, proto);
}
