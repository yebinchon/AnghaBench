
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {scalar_t__ function; int startdev; } ;
typedef int * dasd_erp_fn_t ;


 int DBF_DEV_EVENT (int ,int ,char*,scalar_t__) ;
 int DBF_WARNING ;
 scalar_t__ dasd_default_erp_action ;
 int * dasd_default_erp_postaction ;

__attribute__((used)) static dasd_erp_fn_t
dasd_fba_erp_postaction(struct dasd_ccw_req * cqr)
{
 if (cqr->function == dasd_default_erp_action)
  return dasd_default_erp_postaction;

 DBF_DEV_EVENT(DBF_WARNING, cqr->startdev, "unknown ERP action %p",
      cqr->function);
 return ((void*)0);
}
