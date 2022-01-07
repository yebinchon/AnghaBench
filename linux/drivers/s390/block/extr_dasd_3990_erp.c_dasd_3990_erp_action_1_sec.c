
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {struct dasd_ccw_req* (* function ) (struct dasd_ccw_req*) ;} ;


 int dasd_3990_erp_alternate_path (struct dasd_ccw_req*) ;

__attribute__((used)) static struct dasd_ccw_req *dasd_3990_erp_action_1_sec(struct dasd_ccw_req *erp)
{
 erp->function = dasd_3990_erp_action_1_sec;
 dasd_3990_erp_alternate_path(erp);
 return erp;
}
