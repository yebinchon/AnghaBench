
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_eckd_private {int count; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;
struct dasd_ccw_req {struct dasd_device* startdev; } ;


 int dasd_ffree_request (struct dasd_ccw_req*,struct dasd_device*) ;

__attribute__((used)) static void dasd_eckd_ese_format_cb(struct dasd_ccw_req *cqr, void *data)
{
 struct dasd_device *device = cqr->startdev;
 struct dasd_eckd_private *private = device->private;

 private->count--;
 dasd_ffree_request(cqr, device);
}
