
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int status; struct dasd_ccw_req* (* function ) (struct dasd_ccw_req*,char*) ;struct dasd_device* startdev; } ;


 int DASD_CQR_FILLED ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;
 struct dasd_ccw_req* dasd_3990_erp_action_4 (struct dasd_ccw_req*,char*) ;
 int dasd_3990_handle_env_data (struct dasd_ccw_req*,char*) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_env_data(struct dasd_ccw_req * erp, char *sense)
{

 struct dasd_device *device = erp->startdev;

 erp->function = dasd_3990_erp_env_data;

 DBF_DEV_EVENT(DBF_WARNING, device, "%s", "Environmental data present");

 dasd_3990_handle_env_data(erp, sense);


 if (sense[7] != 0x0F) {
  erp = dasd_3990_erp_action_4(erp, sense);
 } else {
  erp->status = DASD_CQR_FILLED;
 }

 return erp;

}
