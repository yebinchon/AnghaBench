
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_device {int features; TYPE_2__* cdev; } ;
struct TYPE_3__ {int scsw; } ;
struct dasd_ccw_req {int blocklist; int status; struct dasd_ccw_req* refers; scalar_t__ lpm; int flags; TYPE_1__ irb; struct dasd_device* startdev; } ;
struct TYPE_4__ {int dev; } ;


 int DASD_CQR_DONE ;
 int DASD_CQR_IN_ERP ;
 int DASD_CQR_VERIFY_PATH ;
 int DASD_FEATURE_ERPLOG ;
 int DBF_DEBUG ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,struct dasd_ccw_req*) ;
 int DEV_STAT_CHN_END ;
 int DEV_STAT_DEV_END ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_3990_erp_additional_erp (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_3990_erp_handle_match_erp (struct dasd_ccw_req*,struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_3990_erp_in_erp (struct dasd_ccw_req*) ;
 int dev_err (int *,char*,...) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int scsw_cstat (int *) ;
 int scsw_dstat (int *) ;
 scalar_t__ test_bit (int ,int *) ;

struct dasd_ccw_req *
dasd_3990_erp_action(struct dasd_ccw_req * cqr)
{
 struct dasd_ccw_req *erp = ((void*)0);
 struct dasd_device *device = cqr->startdev;
 struct dasd_ccw_req *temp_erp = ((void*)0);

 if (device->features & DASD_FEATURE_ERPLOG) {

  dev_err(&device->cdev->dev,
       "ERP chain at BEGINNING of ERP-ACTION\n");
  for (temp_erp = cqr;
       temp_erp != ((void*)0); temp_erp = temp_erp->refers) {

   dev_err(&device->cdev->dev,
        "ERP %p (%02x) refers to %p\n",
        temp_erp, temp_erp->status,
        temp_erp->refers);
  }
 }


 if ((scsw_cstat(&cqr->irb.scsw) == 0x00) &&
     (scsw_dstat(&cqr->irb.scsw) ==
      (DEV_STAT_CHN_END | DEV_STAT_DEV_END))) {

  DBF_DEV_EVENT(DBF_DEBUG, device,
       "ERP called for successful request %p"
       " - NO ERP necessary", cqr);

  cqr->status = DASD_CQR_DONE;

  return cqr;
 }


 erp = dasd_3990_erp_in_erp(cqr);

 if (erp == ((void*)0)) {

  erp = dasd_3990_erp_additional_erp(cqr);
  if (IS_ERR(erp))
   return erp;
 } else {

  erp = dasd_3990_erp_handle_match_erp(cqr, erp);
 }







 if (test_bit(DASD_CQR_VERIFY_PATH, &erp->flags) && cqr->lpm) {
  erp->lpm = cqr->lpm;
 }

 if (device->features & DASD_FEATURE_ERPLOG) {

  dev_err(&device->cdev->dev,
       "ERP chain at END of ERP-ACTION\n");
  for (temp_erp = erp;
       temp_erp != ((void*)0); temp_erp = temp_erp->refers) {

   dev_err(&device->cdev->dev,
        "ERP %p (%02x) refers to %p\n",
        temp_erp, temp_erp->status,
        temp_erp->refers);
  }
 }


 if (list_empty(&erp->blocklist)) {
  cqr->status = DASD_CQR_IN_ERP;

  list_add_tail(&erp->blocklist, &cqr->blocklist);
 }



 return erp;

}
