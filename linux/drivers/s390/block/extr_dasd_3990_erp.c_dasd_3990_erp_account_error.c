
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dasd_device {scalar_t__ path_thrhld; int path_interval; TYPE_5__* path; } ;
struct dasd_ccw_req {TYPE_4__* refers; struct dasd_device* startdev; } ;
typedef int __u8 ;
struct TYPE_10__ {unsigned long errorclk; int error_count; } ;
struct TYPE_6__ {int lpum; } ;
struct TYPE_7__ {TYPE_1__ esw1; } ;
struct TYPE_8__ {TYPE_2__ esw; } ;
struct TYPE_9__ {TYPE_3__ irb; } ;


 int NSEC_PER_SEC ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int dasd_3990_erp_disable_path (struct dasd_device*,int ) ;
 unsigned long get_tod_clock () ;
 int pathmask_to_pos (int ) ;
 int tod_to_ns (unsigned long) ;

__attribute__((used)) static void dasd_3990_erp_account_error(struct dasd_ccw_req *erp)
{
 struct dasd_device *device = erp->startdev;
 __u8 lpum = erp->refers->irb.esw.esw1.lpum;
 int pos = pathmask_to_pos(lpum);
 unsigned long clk;

 if (!device->path_thrhld)
  return;

 clk = get_tod_clock();




 if ((tod_to_ns(clk - device->path[pos].errorclk) / NSEC_PER_SEC)
     >= device->path_interval) {
  atomic_set(&device->path[pos].error_count, 0);
  device->path[pos].errorclk = 0;
 }
 atomic_inc(&device->path[pos].error_count);
 device->path[pos].errorclk = clk;

 if (atomic_read(&device->path[pos].error_count) >=
     device->path_thrhld)
  dasd_3990_erp_disable_path(device, lpum);
}
