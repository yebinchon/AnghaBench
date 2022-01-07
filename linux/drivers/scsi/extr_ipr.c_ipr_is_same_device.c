
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int scsi_lun; } ;
struct ipr_resource_entry {scalar_t__ bus; scalar_t__ target; scalar_t__ lun; TYPE_2__ dev_lun; int dev_id; TYPE_1__* ioa_cfg; } ;
struct TYPE_12__ {TYPE_5__* cfgte; TYPE_3__* cfgte64; } ;
struct ipr_config_table_entry_wrapper {TYPE_6__ u; } ;
struct TYPE_10__ {scalar_t__ bus; scalar_t__ target; scalar_t__ lun; } ;
struct TYPE_11__ {TYPE_4__ res_addr; } ;
struct TYPE_9__ {int lun; int dev_id; } ;
struct TYPE_7__ {scalar_t__ sis64; } ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static int ipr_is_same_device(struct ipr_resource_entry *res,
         struct ipr_config_table_entry_wrapper *cfgtew)
{
 if (res->ioa_cfg->sis64) {
  if (!memcmp(&res->dev_id, &cfgtew->u.cfgte64->dev_id,
     sizeof(cfgtew->u.cfgte64->dev_id)) &&
   !memcmp(&res->dev_lun.scsi_lun, &cfgtew->u.cfgte64->lun,
     sizeof(cfgtew->u.cfgte64->lun))) {
   return 1;
  }
 } else {
  if (res->bus == cfgtew->u.cfgte->res_addr.bus &&
      res->target == cfgtew->u.cfgte->res_addr.target &&
      res->lun == cfgtew->u.cfgte->res_addr.lun)
   return 1;
 }

 return 0;
}
