
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {scalar_t__ status; void (* function ) (struct dasd_ccw_req*,char*) ;int startdev; int lpm; int flags; } ;


 scalar_t__ DASD_CQR_FAILED ;
 scalar_t__ DASD_CQR_NEED_ERP ;
 int DASD_CQR_VERIFY_PATH ;
 char DASD_SENSE_BIT_3 ;
 int dasd_3990_erp_alternate_path (struct dasd_ccw_req*) ;
 int dasd_path_get_opm (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
dasd_3990_erp_compound_path(struct dasd_ccw_req * erp, char *sense)
{
 if (sense[25] & DASD_SENSE_BIT_3) {
  dasd_3990_erp_alternate_path(erp);

  if (erp->status == DASD_CQR_FAILED &&
      !test_bit(DASD_CQR_VERIFY_PATH, &erp->flags)) {


   erp->lpm = dasd_path_get_opm(erp->startdev);
   erp->status = DASD_CQR_NEED_ERP;
  }
 }

 erp->function = dasd_3990_erp_compound_path;

}
