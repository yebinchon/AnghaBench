
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {scalar_t__ status; struct dasd_ccw_req* (* function ) (struct dasd_ccw_req*,char*) ;} ;


 scalar_t__ DASD_CQR_FAILED ;
 scalar_t__ DASD_CQR_NEED_ERP ;
 struct dasd_ccw_req* dasd_3990_erp_compound_code (struct dasd_ccw_req*,char*) ;
 int dasd_3990_erp_compound_config (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_compound_path (struct dasd_ccw_req*,char*) ;
 struct dasd_ccw_req* dasd_3990_erp_compound_retry (struct dasd_ccw_req*,char*) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_3990_erp_compound(struct dasd_ccw_req * erp, char *sense)
{

 if ((erp->function == dasd_3990_erp_compound_retry) &&
     (erp->status == DASD_CQR_NEED_ERP)) {

  dasd_3990_erp_compound_path(erp, sense);
 }

 if ((erp->function == dasd_3990_erp_compound_path) &&
     (erp->status == DASD_CQR_NEED_ERP)) {

  erp = dasd_3990_erp_compound_code(erp, sense);
 }

 if ((erp->function == dasd_3990_erp_compound_code) &&
     (erp->status == DASD_CQR_NEED_ERP)) {

  dasd_3990_erp_compound_config(erp, sense);
 }


 if (erp->status == DASD_CQR_NEED_ERP)
  erp->status = DASD_CQR_FAILED;

 return erp;

}
