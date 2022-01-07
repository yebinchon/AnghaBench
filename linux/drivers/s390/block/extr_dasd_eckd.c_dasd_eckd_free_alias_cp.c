
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct dasd_eckd_private {int count; } ;
struct dasd_ccw_req {TYPE_1__* memdev; } ;
struct TYPE_2__ {int cdev; struct dasd_eckd_private* private; } ;


 int dasd_eckd_free_cp (struct dasd_ccw_req*,struct request*) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int dasd_eckd_free_alias_cp(struct dasd_ccw_req *cqr,
       struct request *req)
{
 struct dasd_eckd_private *private;
 unsigned long flags;

 spin_lock_irqsave(get_ccwdev_lock(cqr->memdev->cdev), flags);
 private = cqr->memdev->private;
 private->count--;
 spin_unlock_irqrestore(get_ccwdev_lock(cqr->memdev->cdev), flags);
 return dasd_eckd_free_cp(cqr, req);
}
