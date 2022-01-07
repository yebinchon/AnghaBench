
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_ccw_req {TYPE_1__* refers; } ;
struct TYPE_2__ {int irb; } ;


 char DASD_SENSE_BIT_0 ;
 struct dasd_ccw_req* dasd_3990_erp_control_check (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_3990_erp_inspect_24 (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_inspect_32 (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_inspect_alias (struct dasd_ccw_req*) ;
 char* dasd_get_sense (int *) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_inspect(struct dasd_ccw_req *erp)
{

 struct dasd_ccw_req *erp_new = ((void*)0);
 char *sense;


 erp_new = dasd_3990_erp_inspect_alias(erp);
 if (erp_new)
  return erp_new;





 sense = dasd_get_sense(&erp->refers->irb);
 if (!sense)
  erp_new = dasd_3990_erp_control_check(erp);

 else if (sense[27] & DASD_SENSE_BIT_0) {


  erp_new = dasd_3990_erp_inspect_24(erp, sense);

 } else {


  erp_new = dasd_3990_erp_inspect_32(erp, sense);

 }

 return erp_new;
}
