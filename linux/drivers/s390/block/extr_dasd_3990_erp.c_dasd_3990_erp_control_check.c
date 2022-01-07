
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_device {int dummy; } ;
struct dasd_ccw_req {TYPE_2__* refers; struct dasd_device* startdev; } ;
struct TYPE_3__ {int scsw; } ;
struct TYPE_4__ {TYPE_1__ irb; } ;


 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;
 int SCHN_STAT_CHN_CTRL_CHK ;
 int SCHN_STAT_INTF_CTRL_CHK ;
 int dasd_3990_erp_account_error (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_3990_erp_action_4 (struct dasd_ccw_req*,int *) ;
 int scsw_cstat (int *) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_control_check(struct dasd_ccw_req *erp)
{
 struct dasd_device *device = erp->startdev;

 if (scsw_cstat(&erp->refers->irb.scsw) & (SCHN_STAT_INTF_CTRL_CHK
        | SCHN_STAT_CHN_CTRL_CHK)) {
  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
       "channel or interface control check");
  dasd_3990_erp_account_error(erp);
  erp = dasd_3990_erp_action_4(erp, ((void*)0));
 }
 return erp;
}
