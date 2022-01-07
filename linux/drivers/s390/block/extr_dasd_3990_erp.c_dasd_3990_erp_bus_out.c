
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
struct dasd_ccw_req {scalar_t__ function; int retries; struct dasd_device* startdev; } ;


 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;
 int HZ ;
 int dasd_3990_erp_block_queue (struct dasd_ccw_req*,int) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_bus_out(struct dasd_ccw_req * erp)
{

 struct dasd_device *device = erp->startdev;




 if (erp->function != dasd_3990_erp_bus_out) {
  erp->retries = 256;
  erp->function = dasd_3990_erp_bus_out;

 } else {


  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
       "bus out parity error or BOPC requested by "
       "channel");

  dasd_3990_erp_block_queue(erp, 60*HZ);

 }

 return erp;

}
