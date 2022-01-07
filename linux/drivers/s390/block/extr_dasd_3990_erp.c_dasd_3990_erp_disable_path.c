
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_device {int features; TYPE_2__* path; TYPE_1__* cdev; } ;
typedef int __u8 ;
struct TYPE_4__ {int error_count; scalar_t__ errorclk; int chpid; int cssid; } ;
struct TYPE_3__ {int dev; } ;


 int DASD_FEATURE_PATH_AUTODISABLE ;
 int atomic_set (int *,int ) ;
 int dasd_path_add_ifccpm (struct dasd_device*,int) ;
 int dasd_path_get_opm (struct dasd_device*) ;
 int dasd_path_remove_opm (struct dasd_device*,int) ;
 int dev_err (int *,char*,int ,int ,int) ;
 int pathmask_to_pos (int) ;

__attribute__((used)) static void dasd_3990_erp_disable_path(struct dasd_device *device, __u8 lpum)
{
 int pos = pathmask_to_pos(lpum);

 if (!(device->features & DASD_FEATURE_PATH_AUTODISABLE)) {
  dev_err(&device->cdev->dev,
   "Path %x.%02x (pathmask %02x) is operational despite excessive IFCCs\n",
   device->path[pos].cssid, device->path[pos].chpid, lpum);
  goto out;
 }


 if (!(dasd_path_get_opm(device) & ~lpum)) {
  dev_err(&device->cdev->dev,
   "Last path %x.%02x (pathmask %02x) is operational despite excessive IFCCs\n",
   device->path[pos].cssid, device->path[pos].chpid, lpum);
  goto out;
 }

 dev_err(&device->cdev->dev,
  "Path %x.%02x (pathmask %02x) is disabled - IFCC threshold exceeded\n",
  device->path[pos].cssid, device->path[pos].chpid, lpum);
 dasd_path_remove_opm(device, lpum);
 dasd_path_add_ifccpm(device, lpum);

out:
 device->path[pos].errorclk = 0;
 atomic_set(&device->path[pos].error_count, 0);
}
