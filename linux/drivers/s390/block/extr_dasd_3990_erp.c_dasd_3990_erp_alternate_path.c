
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dasd_device {TYPE_5__* cdev; } ;
struct TYPE_7__ {int lpum; } ;
struct TYPE_8__ {TYPE_1__ sublog; } ;
struct TYPE_9__ {TYPE_2__ esw0; } ;
struct TYPE_10__ {TYPE_3__ esw; } ;
struct dasd_ccw_req {int lpm; int retries; int status; TYPE_4__ irb; struct dasd_device* startdev; } ;
typedef int __u8 ;
struct TYPE_11__ {int dev; } ;


 int DASD_CQR_FAILED ;
 int DASD_CQR_FILLED ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,int,int,int) ;
 int DBF_WARNING ;
 int ccw_device_get_path_mask (TYPE_5__*) ;
 int dasd_path_get_opm (struct dasd_device*) ;
 int dev_err (int *,char*,int,int) ;
 int get_ccwdev_lock (TYPE_5__*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void
dasd_3990_erp_alternate_path(struct dasd_ccw_req * erp)
{
 struct dasd_device *device = erp->startdev;
 __u8 opm;
 unsigned long flags;


 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 opm = ccw_device_get_path_mask(device->cdev);
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);
 if (erp->lpm == 0)
  erp->lpm = dasd_path_get_opm(device) &
   ~(erp->irb.esw.esw0.sublog.lpum);
 else
  erp->lpm &= ~(erp->irb.esw.esw0.sublog.lpum);

 if ((erp->lpm & opm) != 0x00) {

  DBF_DEV_EVENT(DBF_WARNING, device,
       "try alternate lpm=%x (lpum=%x / opm=%x)",
       erp->lpm, erp->irb.esw.esw0.sublog.lpum, opm);


  erp->status = DASD_CQR_FILLED;
  erp->retries = 10;
 } else {
  dev_err(&device->cdev->dev,
   "The DASD cannot be reached on any path (lpum=%x"
   "/opm=%x)\n", erp->irb.esw.esw0.sublog.lpum, opm);


  erp->status = DASD_CQR_FAILED;
 }
}
