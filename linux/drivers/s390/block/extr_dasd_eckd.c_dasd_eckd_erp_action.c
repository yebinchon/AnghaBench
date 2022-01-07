
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {struct ccw_device* cdev; } ;
struct dasd_ccw_req {scalar_t__ startdev; } ;
struct TYPE_2__ {int cu_type; } ;
struct ccw_device {TYPE_1__ id; } ;
typedef int dasd_erp_fn_t ;


 int dasd_3990_erp_action ;
 int dasd_default_erp_action ;

__attribute__((used)) static dasd_erp_fn_t
dasd_eckd_erp_action(struct dasd_ccw_req * cqr)
{
 struct dasd_device *device = (struct dasd_device *) cqr->startdev;
 struct ccw_device *cdev = device->cdev;

 switch (cdev->id.cu_type) {
 case 0x3990:
 case 0x2105:
 case 0x2107:
 case 0x1750:
  return dasd_3990_erp_action;
 case 0x9343:
 case 0x3880:
 default:
  return dasd_default_erp_action;
 }
}
