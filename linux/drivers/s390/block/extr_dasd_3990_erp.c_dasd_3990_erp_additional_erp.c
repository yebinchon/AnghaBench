
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {int dummy; } ;


 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_3990_erp_add_erp (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_3990_erp_inspect (struct dasd_ccw_req*) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_additional_erp(struct dasd_ccw_req * cqr)
{

 struct dasd_ccw_req *erp = ((void*)0);


 erp = dasd_3990_erp_add_erp(cqr);

 if (IS_ERR(erp))
  return erp;


 if (erp != cqr) {

  erp = dasd_3990_erp_inspect(erp);
 }

 return erp;

}
